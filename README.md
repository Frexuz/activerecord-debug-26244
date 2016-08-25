# Steps

```
bundle exec rails c

Payment.create!(date: '2016-08-21 00:53:19')

Payment.select("DATE(date) as d").first.d
  Payment Load (0.1ms)  SELECT  DATE(date) as d FROM `payments` ORDER BY `payments`.`id` ASC LIMIT 1
=> Sun, 21 Aug 2016

Payment.select("DATE(date) as date").first.date
  Payment Load (0.1ms)  SELECT  DATE(date) as date FROM `payments` ORDER BY `payments`.`id` ASC LIMIT 1
=> nil
```
