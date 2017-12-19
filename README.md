# Jekyll and hybe

Jekyll & Hybe는 프로젝트 관련 기술을 제공 및 공유하는 블로그이다. 

마크다운 방식과 호스팅 없이 사용할 수 있는 설치형 블로그 구축하는 것을 목표로 한다. 


## Getting Started

###hooks
특정 사용자 master commit, push 사용하기 
- config.yml파일에서 git:admins에 사용자 git메일 주소 등록하기 
- ex)git:
   admins: 
    - useremail@gmail.com 
- hooks 디렉토리에 있는 pre-commit, pre-push, push-block.sh 파일을 .git/hooks 디렉토리에 옮겨준다. 



## Deployment

데이터베이스가 필요없고, 마크다운형태로 정적 HTML을 만들어내는 jekyll을 이용해서 개발한다. 

github pages에서 제공해주는 무료 호스팅을 사용한다.  


## Built With
* [Jekyll](http://https://jekyllrb.com/) 
* [git](https://github.com/)
* [Ruby](https://www.ruby-lang.org/ko/) 



## Versioning
We use [Keep a CHANGELOG](http://keepachangelog.com/en/0.3.0/) for versioning.
- see the CHANGELOG.md file for details 




## Authors
* **Hibrainnet Intern** 




## License
This project is licensed under the MIT License - see the LICENSE.md file for details





