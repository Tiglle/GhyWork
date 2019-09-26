package com.ghy.component;

import com.ghy.model.News;
import com.ghy.service.NewsService;
import com.ghy.utils.JsonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;


@Component
@EnableScheduling
public class NewsSchemaComponent {

    @Autowired
    private NewsService newsService;

    @Scheduled(cron = "0 0 1 * * ?")
    public void newsRandom(){
        System.out.println("开始执行定时任务+++++++++++++++++++++++++++");
        List<News> newsList = newsService.selectRamdomByNum(4);
        System.out.println("查询到数据newsList="+JsonMapper.toJsonString(newsList));
        for(News news:newsList){
            int d= newsService.deleteByPrimaryKey(news.getId());
            news.setTime(new Date());
            news.setId(null);
            int i = newsService.insert(news);
            System.out.println("删除条数="+d+"，新增条数="+i+"，此条数据为="+JsonMapper.toJsonString(news));
        }
        System.out.println("定时任务执行结束++++++++++++++++++++++++++++");
    }
}
