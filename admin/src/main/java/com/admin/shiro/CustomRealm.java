package com.admin.shiro;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.admin.model.Menu;
import com.admin.model.User;
import com.admin.service.MenuService;
import com.admin.service.PermissionService;
import com.admin.service.UserService;

/**
 * 自定义realm,覆盖默认realm(需要配置),让授权数据从数据库或其他地方获取
 * @author Administrator
 *
 */
public class CustomRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private PermissionService permissionService;
	
    /**
     * 设置realm的名称,模拟用
     */
    @Override
    public void setName(String name) {
        super.setName("customRealm");
    }

    /**
     * 认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        //token是用户输入的信息
        //1.从token中取出用户身份信息,也就是登陆页面的username
        String username = (String) token.getPrincipal();
        //2.根据用户身份信息从数据库查询用户信息
        User user = userService.findUserByUsername(username);
        //3.查询不到,请返回null
        if(user==null){
            return null;
        }
        
        //从数据库查询了用户菜单信息
        List<Menu> menus = menuService.findMenuByUid(user.getId());
        user.setMenus(menus);

        //密码
        String password = user.getPassword();
        //盐
        String salt = user.getSalt();

        //4.查询到，返回AuthenticationInfo,将user设置进去,盐设置进去,别忘了在spring配置文件配置凭证匹配器，可以在控制器通过Subject获取
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(user,password,ByteSource.Util.bytes(salt),this.getName());

        return simpleAuthenticationInfo;
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //认证成功后授权
        //从principals中获取主身份信息,上面认证成功后存入的省份信息
        User user = (User) principals.getPrimaryPrincipal();

        //根据身份信息从数据库查询权限信息
        List<String> permission = permissionService.findPermissionsByUid(user.getId());

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        //返回用户所有的权限
        simpleAuthorizationInfo.addStringPermissions(permission);

        return simpleAuthorizationInfo;
    }

    /**
     * 手动清空shiro授权缓存的方法,供service调用
     * 清除后,授权会再次请求realm
     */
    public void clearCached(){
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }

    public static void main(String[] args) {
//加密方式
        String algorithmName="MD5";

        //加密的字符串
        String source="yangrui123";

        //盐值，用于和密码混合起来用
        ByteSource salt = ByteSource.Util.bytes("123");

        //加密的次数,可以进行多次的加密操作
        int hashIterations = 1;

        //通过SimpleHash 来进行加密操作
        SimpleHash hash = new SimpleHash(algorithmName, source, salt, hashIterations);

        System.out.println(hash.toString());
    }
    
}