---
layout: post
author: gh.park
title: "Jekyll & Hybe to Medium"
date: 2017-12-20 17:58:11 +0900
tags: [연구노트, 인턴십, jekyll ]
category: [jekyll]
publication: 'gahye-blog'
license: 'public-domain'
permalink: /Jekyll-Hybe-to-Medium
---

### 연구내용

#### Medium blog 마크다운형태로 저장하기
Node.js의 medium exporter패키지를 이용하므로, node.js가 설치되어있어야 함

1. medium exporter패키지 설치
* [Medium Exporter github URL](https://github.com/xdamman/mediumexporter)


```console
npm install -g mediumexporter
```
2. yaml frontmatter를 자동으로 추가하기 위해, /mediumexporter/index.js 파일을 /usr/lib/node_modules/mediumexporter/에 추가 (기존 index.js 삭제)


```yaml
---
layout: post
author: 600bdec36593
url: https://medium.com/@robbinscm/mayor-bill-de-blasio-gothamist-dnainfo-interview-cbce444ca421
date: Wed Dec 20 2017 00:28:23 GMT+0900 (DST)
tags: [New York, Mayor Bill De Blasio, Sanctuary Cities, Journalism, Inequality ]
---
```


3. 사용방법
마크다운 파일을 받을 디렉토리에서 명령어 실행


```console
$ mediumexporter --headers Medium 주소 > medium_post.md
$> mediumexporter --headers https://medium.com/@xdamman/my-10-day-meditation-retreat-in-silence-71abda54940e > medium_post.md

```


 도움말은 mediumexporter -h 을 이용

#### payload
 사용에 있어서 전송되는 데이터를 의미, 전송의 근본적인 목적이 되는 데이터의 일부분으로 데이터와 함께 전송되는 헤더와 메타데이터와 같은 데이터는 제외된다. 데이터 덩어리 중 흥미있는 데이터를 의미한다.


#### Javascript의 Object를 다루는 몇가지 팁
1. Object의 key를 변수로 받기

```javascript
var person = {
  name : "neko",
  gender : "male"
};

console.log( person.name, person.gender );
```


2. 요소의 갯수 알아내기


```javascript
var object = { ... };
var length = Object.keys( object ).length;

console.log( length );
// object의 요소 갯수가 반환이 된다.
// Object.keys()만 돌리게 되면 해당 Object의 value값만 배열로 반환이 된다.
```

3. Object의 value 알아내기


```javascript
var obj = { foo: 'bar', baz: 42 };
console.log(Object.values(obj)); // ['bar', 42]

// array like object
var obj = { 0: 'a', 1: 'b', 2: 'c' };
console.log(Object.values(obj)); // ['a', 'b', 'c']
```



### 참고자료
* [Medium Exporter github URL](https://github.com/xdamman/mediumexporter)
* [payload](https://ko.wikipedia.org/wiki/%ED%8E%98%EC%9D%B4%EB%A1%9C%EB%93%9C)
* [Javascript의 Object를 다루는 몇가지 팁들](http://blog.nekoromancer.kr/2014/07/03/javascript%EC%9D%98-object%EB%A5%BC-%EB%8B%A4%EB%A3%A8%EB%8A%94-%EB%AA%87%EA%B0%80%EC%A7%80-%ED%8C%81%EB%93%A4/)
* [Object.values()](https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Object/values)
