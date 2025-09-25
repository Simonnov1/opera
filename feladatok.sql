2
select szerepnev from szerep where hang = 'bariton' order by szerepnev;
3
select max(szulev)-min(szulev) from enekes;
4
select szerepnev, hang, cim from szerep inner join mu on szerep.muid = mu.id where szerzo = "Erkel";
5
select nev, szerepnev, max(utoljara-szulev) as eletkor from repertoar inner join enekes on enekes.id=enekesid inner join szerep on szerep.id=szerepid inner join mu on mu.id=muid where cim = 'Bánk bán';
6
select distinct nev from repertoar inner join enekes on enekes.id=enekesid inner join szerep on szerep.id=szerepid inner join mu on mu.id=muid where szerzo = 'Wagner' and hang='alt' or hang='szoprán' or hang='mezzoszoprán';
7
select nev, szerepnev from repertoar inner join enekes on enekes.id=enekesid inner join szerep on szerep.id=szerepid inner join mu on mu.id=muid where muid = (select muid from szerep where szerepnev = "Ottó") and nev LIKE "%Ottó%";
8
select hang, count(distinct nev) from repertoar inner join enekes on enekes.id=enekesid inner join szerep on szerep.id=szerepid inner join mu on mu.id=muid group by hang;