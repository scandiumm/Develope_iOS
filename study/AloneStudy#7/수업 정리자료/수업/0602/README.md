# 6월2일
# UITableView
## 1. Style
### 1.1 plain
### 1.2 Grouped
## 2. Protocol
### 2.1 DataSource
- 프로토콜을 사용하여 테이블뷰를 보여줄 데이터를 관리할 대리인의 역할을 정의해 둔것
- 역할
	- @require
	 - 테이블뷰의 각 센션별 열의 개수를 설정
	 - Row별 Cell객체
	- @optional
	 - 테이블 뷰 섹션의 개수를 설정

```
public protocol UITableViewDataSource : NSObjectProtocol {  @available(iOS 2.0, *)     public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
     //섹션별 row의 갯수 리턴 코드 구현
     // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:     // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
     @available(iOS 2.0, *)     public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     @available(iOS 2.0, *)     optional public func numberOfSections(in tableView: UITableView) -> Int // Default is 1 if not implemented
     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? // fixed font style. use custom view (UILabel) if you want something different
     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
```

### 2.2 Delegate
- 프로토콜을 사용하여 테이블뷰의 대리자로써의 수행할 수 있는 역할들을 정의해 둔 것
- 역할
	- 헤더 또는 풋터의 높이를 설정
	- 헤더 또는 풀터 뷰를 제공
	- 셀을 선택하였을대 수행할 동작 관리
	- 셀이 삭제될 때의 동작등의 관리

```
public protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
     // Display customization     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
     @available(iOS 6.0, *)     optional public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
     // Variable height support     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
     @available(iOS 2.0, *)     optional public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
```

## 3. UITableViewCell

## 4. IndexPath
