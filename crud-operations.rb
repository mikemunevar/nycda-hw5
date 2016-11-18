mikemunevar:~/workspace (master) $ rails console
Running via Spring preloader in process 20205
Loading development environment (Rails 4.2.5)
2.3.0 :001 > Person.create(name: "John", seller: true)
   (0.3ms)  begin transaction
  SQL (0.7ms)  INSERT INTO "people" ("name", "seller", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "John"], ["seller", "t"], ["created_at", "2016-11-18 22:12:06.223728"], ["updated_at", "2016-11-18 22:12:06.223728"]]
   (18.2ms)  commit transaction
 => #<Person id: 4, seller: true, buyer: nil, name: "John", email: nil, created_at: "2016-11-18 22:12:06", updated_at: "2016-11-18 22:12:06", sex: nil> 
2.3.0 :002 > Person.create(name: "John", buyer: true)                                                                                      
   (0.1ms)  begin transaction
  SQL (0.4ms)  INSERT INTO "people" ("name", "buyer", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "John"], ["buyer", "t"], ["created_at", "2016-11-18 22:12:22.074452"], ["updated_at", "2016-11-18 22:12:22.074452"]]
   (33.4ms)  commit transaction
 => #<Person id: 5, seller: nil, buyer: true, name: "John", email: nil, created_at: "2016-11-18 22:12:22", updated_at: "2016-11-18 22:12:22", sex: nil> 
2.3.0 :003 > Person.create(name: "John", sex: "M" )                                                                                
   (0.2ms)  begin transaction
  SQL (0.5ms)  INSERT INTO "people" ("name", "sex", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "John"], ["sex", "M"], ["created_at", "2016-11-18 22:12:55.363913"], ["updated_at", "2016-11-18 22:12:55.363913"]]
   (30.2ms)  commit transaction
 => #<Person id: 6, seller: nil, buyer: nil, name: "John", email: nil, created_at: "2016-11-18 22:12:55", updated_at: "2016-11-18 22:12:55", sex: "M"> 
2.3.0 :004 > Person.last.destroy
  Person Load (0.4ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" DESC LIMIT 1
   (0.1ms)  begin transaction
  SQL (0.3ms)  DELETE FROM "people" WHERE "people"."id" = ?  [["id", 6]]
   (11.4ms)  commit transaction
 => #<Person id: 6, seller: nil, buyer: nil, name: "John", email: nil, created_at: "2016-11-18 22:12:55", updated_at: "2016-11-18 22:12:55", sex: "M"> 
2.3.0 :005 > Person.first
  Person Load (0.3ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1
 => #<Person id: 1, seller: true, buyer: false, name: "Mike", email: "mike@email.com", created_at: "2016-11-18 22:01:40", updated_at: "2016-11-18 22:01:40", sex: nil> 
2.3.0 :006 > 


2.3.0 :012 >   Person.find(1)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = ? LIMIT 1  [["id", 1]]
 => #<Person id: 1, seller: true, buyer: false, name: "Mike", email: "mike@email.com", created_at: "2016-11-18 22:01:40", updated_at: "2016-11-18 22:01:40", sex: nil> 
2.3.0 :013 > Person.find(2)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = ? LIMIT 1  [["id", 2]]
 => #<Person id: 2, seller: false, buyer: false, name: "James", email: "james@email.com", created_at: "2016-11-18 22:02:00", updated_at: "2016-11-18 22:02:00", sex: nil> 
2.3.0 :014 > Person.create(name: "Spartacus", email: "spartacus@email.com" )
   (0.2ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "people" ("name", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "Spartacus"], ["email", "spartacus@email.com"], ["created_at", "2016-11-18 22:20:16.838007"], ["updated_at", "2016-11-18 22:20:16.838007"]]
   (12.6ms)  commit transaction
 => #<Person id: 7, seller: nil, buyer: nil, name: "Spartacus", email: "spartacus@email.com", created_at: "2016-11-18 22:20:16", updated_at: "2016-11-18 22:20:16", sex: nil> 
2.3.0 :015 > 
2.3.0 :016 >   
2.3.0 :017 >   
2.3.0 :018 >   
2.3.0 :019 >   Person.where(name: 'Spartacus')
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."name" = ?  [["name", "Spartacus"]]
 => #<ActiveRecord::Relation [#<Person id: 7, seller: nil, buyer: nil, name: "Spartacus", email: "spartacus@email.com", created_at: "2016-11-18 22:20:16", updated_at: "2016-11-18 22:20:16", sex: nil>]> 
2.3.0 :020 > 



2.3.0 :025 >   
2.3.0 :026 >   Person.fourth
  Person Load (0.3ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1 OFFSET 3
 => #<Person id: 4, seller: true, buyer: nil, name: "John", email: nil, created_at: "2016-11-18 22:12:06", updated_at: "2016-11-18 22:12:06", sex: nil> 
2.3.0 :027 > Person.fifth
  Person Load (0.3ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1 OFFSET 4
 => #<Person id: 5, seller: nil, buyer: true, name: "John", email: nil, created_at: "2016-11-18 22:12:22", updated_at: "2016-11-18 22:12:22", sex: nil> 
2.3.0 :028 > Person.second
  Person Load (0.3ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1 OFFSET 1
 => #<Person id: 2, seller: false, buyer: false, name: "James", email: "james@email.com", created_at: "2016-11-18 22:02:00", updated_at: "2016-11-18 22:02:00", sex: nil> 
2.3.0 :029 > 
2.3.0 :030 >   
2.3.0 :031 >   
2.3.0 :032 >   
2.3.0 :033 >   Person.third!
  Person Load (0.4ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1 OFFSET 2
 => #<Person id: 3, seller: false, buyer: true, name: "Lucy", email: "lucy@email.com", created_at: "2016-11-18 22:02:27", updated_at: "2016-11-18 22:02:27", sex: nil> 
2.3.0 :034 > 

2.3.0 :037 >   Person.count
   (0.3ms)  SELECT COUNT(*) FROM "people"
 => 6 
2.3.0 :038 >