# Jekyll and hybe

**Jekyll & Hybe**는 프로젝트 [Jekyll](https://jekyllrb.com/) 기반의 블로그 엔진이다.

## GitHub Pages 퍼블리싱 설정
Jekyll & Hybe는 GitHub 를 사용하여 GitHub Pages로 퍼블리싱하는 기능을 가지고 있다. github 가 아닌 다른 git 저장소에서 GitHub 로 자동으로 소스코드를 디플로이하여 GitHub Pages를 퍼블리싱할 수 있다.

`_config.yml` 파일에서 `github_pages:` 를 설정한다.

```
github_pages :
  remote_url : 소스코드를 push 할 저장소의 URL
  remote_name : 등록되는 url의 remote 이름(default 값은 github로 설정)
  branch : 소스코드를 push 할 저장소의 branch 이름
```

예)

```
github_pages:
  remote_url : git@github.com/hibrainnet/jekyll-and-hybe.git
  remote_name : github
  branch: source
```

## git 관리자 설정 

Jekyll & Hybe 에서는 소스코드 관리를 제한하기 위해 git 관리자만 master 브랜치에 commit과 push 를 할 수 있는 기능을 가지고 있다. 이 기능을 같이 작업하는 다른 사용자가 소스코드를 master에 적용할 수 없도록 제한하여 소스코드의 품질을 관리할 때 필요한 기능이다. 이 기능을 사용하기 위해서는 다음과 같이 크게 두가지 설정을 해야한다.

- `hooks/` 디렉토리 안의 파일을 `.git/hooks/`  디렉토리 안으로 복사한다.
- `_config.yml` 파일 안에 있는 `git:`의 `admins:` 에 관리자 이메일 주소를 추가한다. 이 때 메일주소는 git에 사용하는 메일 주소를 입력한다. 관리자의 메일은 배열 형태로 여러개를 입력할 수 있다.
```
git:
  admins:
    - userid@hibrain.net
    - userid@gmail.com
```
git의 메일주소를 확인하고 싶으면 다음 명령어를 사용하여 확인 할 수 있다.
```
git config user.email
```

## Inport 기능
Jekyll & Hybe는 다른 외부 블로그 서비스에서 글을 Import 하는 기능을 가지고 있다. Inport 할 수 있는 서비스는 다음과 같다.

- [Medium](https://www.medium.com)
- [Atlassian Confluence](https://www.atlassian.com/software/confluence)

### Medium to Jekyll & Hibye
**Medium to Jekyll & Hybe** 는 Medium의 글을 Jekyll & Hybe의 글로 임포트하는 기능이다. 

```
jb import -from medium -uri https://medium.com/@hibrainapps/hello-world -doc _posts/2017-12-25-helloworkd.md
```

## Export 기능
Jekyll & Hybe는 다른 외부 블로그 서비스로 내가 쓴 글을 export 할 수 있는 기능을 가지고 있다. Export 할 수 있는 서비스는 다음과 같다. 
 
- [Medium](https://www.medium.com)
- [Atlassian Confluence](https://www.atlassian.com/software/confluence)

### Jekyll & Hybe to Medium (Medium 에 export하기)
FrontMatter에 Medium 글 발행에 필요한 정보를 추가한다. 
- **publication** : Medium 컬렉션 이름
- **license** : all-rights-reserved, cc-40-by, cc-40-by-nd, cc-40-by-sa, cc-40-by-nc, cc-40-by-nc-nd, cc-40-by-nc-sa, cc-40-zero, public-domain

```yaml
---
layout: post
title:  "반갑습니다."
date:   2017-12-07 13:58:11 +0900
categories: [jekyll, update]
tags: [jekyll]
publication: 'hi-blog'
license: 'public-domain'
---
```

FrontMatter 설정 후 다음 명령어를 실행한다. token은 [Medium Settings](https://medium.com/me/settings)에서 생성한 Medium Token 을 사용한다.

```
jb export -to medium -doc  _posts/2017-12-25-hello-world.md
```
​
## License
This project is licensed under the MIT License - see the LICENSE.md file for details
