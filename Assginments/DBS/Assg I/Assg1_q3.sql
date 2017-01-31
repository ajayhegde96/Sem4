select cname from customer natural join buys natural join item where brand='Cotton World';

select brand from item group by brand having count(Iid)>=10;

select cname from customer natural join buys natural join item where brand ='MTR' group by customer having max(count(distinct iname))

select brand from item I1 group by brand as B,distinct iname having sum(cost)>(select count(cost) from item where brand=B group by brand)