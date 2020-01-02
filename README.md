# git-analytics-docker
Analyze the history and manage your own git repositories!

http://creativecommons.org/licenses/by-nc-nd/3.0/de/

### How to install and start

Just adapt and run the docker-compose.yml file.
Please adapt the docker host ip.
* API_HOST=192.168.99.100

This ip will be used by the angular client, which will be available at this address.

Copy git repositories you want analyze to the repository folder. Please make sure, that your docker-host is not open to the world so that all services remain bound to a hidden network. In future I will secure the client with a password and hide all elasticsearch ports. 

You may want to group your repositories by projects:

repository->project0->r1,r2,r3

repository->project1->r1,r2,r3

Run this curl command to start fetching all commits from your repositories:

curl -u admin:test -d "{\"command\": \"FETCH\"}" -H "Content-Type: application/json" -X POST http://192.168.99.100:8090/repository-fetcher/api/v1/commands

After some time you should find a result, like shown by the screenshots, at 192.168.99.100.

Have fun.

[![Foo](https://www.dualexec.com/wiki/lib/tpl/markgard-gtopia-wiki-c621a539da50/images/88x31.png)](http://creativecommons.org/licenses/by-nc-nd/3.0/de/)


[![Foo](https://www.dualexec.com/page/lib/exe/fetch.php?media=2019-03-24_14_43_47-crypto-analyticsprojects.png)](http://www.dualexec.com/)

[![Foo](https://www.dualexec.com/page/lib/exe/fetch.php?media=2019-03-24_14_37_14-crypto-analytics_author_commits.png)](http://www.dualexec.com/)

[![Foo](https://www.dualexec.com/page/lib/exe/fetch.php?media=2019-03-24_14_46_05-crypto-analytics_top_authosrs.png)](http://www.dualexec.com/)

[![Foo](https://www.dualexec.com/page/lib/exe/fetch.php?media=2019-03-24_15_11_26-crypto-analytics_commit_type.png)](http://www.dualexec.com/)

[![Foo](https://www.dualexec.com/page/lib/exe/fetch.php?media=zeichnung1.png)](http://www.dualexec.com/)

### Notice 
No Warranty: THE SUBJECT SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY WARRANTY OF ANY KIND, EITHER EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, ANY WARRANTY THAT THE SUBJECT SOFTWARE WILL CONFORM TO SPECIFICATIONS, ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR FREEDOM FROM INFRINGEMENT, ANY WARRANTY THAT THE SUBJECT SOFTWARE WILL BE ERROR FREE, OR ANY WARRANTY THAT DOCUMENTATION, IF PROVIDED, WILL CONFORM TO THE SUBJECT SOFTWARE. 
