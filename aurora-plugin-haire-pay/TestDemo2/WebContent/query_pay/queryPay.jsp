<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.*,java.sql.*,javax.sql.*,javax.naming.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快捷通查询支付结果网关接口测试页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
       <form id="form1" action="<%=request.getContextPath()%>/query_pay/queryPayService.jsp" method="post">

接口名称:  <input type="text" name="service" value="query_pay">(例如：query_pay)
<br/>
接口版本:  <input type="text" name="version" value="1.0">(目前版本：1.0)
<br/>
合作者身份ID:  <input type="text" name="partner_id" value="200000030006">
<br/>
 字符集:  <input type="text" name="_input_charset" value="UTF-8">(类型有：UTF-8;GBK;GB2312)<br/>
 签名: <input type="text" name="sign" value="">(签约合作方的钱包唯一用户号 不可空)<br/>
 签名方式: <input type="text" name="sign_type" value="ITRUSSRV">(签名方式只支持RSA、MD5、ITRUSSRV 不可空)<br/>
 返回页面路径: <input type="text" name="return_url" value="http://localhost:8080/newtestdemo/instantReturnUrlResponse.jsp">(页面跳转同步返回页面路径  可空)<br/>
 备注: <input type="text" name="memo" value=""><br/>
 
 商户支付请求号: <input type="text" name="request_no" value="9400234539532526">(不可空)<br/>
 操作员Id: <input type="text" name="operator_id" value="">(可空)<br/>
 商户私钥:  <input type="text" name="sign_key" value="MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAO/6rPCvyCC+IMalLzTy3cVBz/+wamCFNiq9qKEilEBDTttP7Rd/GAS51lsfCrsISbg5td/w25+wulDfuMbjjlW9Afh0p7Jscmbo1skqIOIUPYfVQEL687B0EmJufMlljfu52b2efVAyWZF9QBG1vx/AJz1EVyfskMaYVqPiTesZAgMBAAECgYEAtVnkk0bjoArOTg/KquLWQRlJDFrPKP3CP25wHsU4749t6kJuU5FSH1Ao81d0Dn9m5neGQCOOdRFi23cV9gdFKYMhwPE6+nTAloxI3vb8K9NNMe0zcFksva9c9bUaMGH2p40szMoOpO6TrSHO9Hx4GJ6UfsUUqkFFlN76XprwE+ECQQD9rXwfbr9GKh9QMNvnwo9xxyVl4kI88iq0X6G4qVXo1Tv6/DBDJNkX1mbXKFYL5NOW1waZzR+Z/XcKWAmUT8J9AkEA8i0WT/ieNsF3IuFvrIYG4WUadbUqObcYP4Y7Vt836zggRbu0qvYiqAv92Leruaq3ZN1khxp6gZKl/OJHXc5xzQJACqr1AU1i9cxnrLOhS8m+xoYdaH9vUajNavBqmJ1mY3g0IYXhcbFm/72gbYPgundQ/pLkUCt0HMGv89tn67i+8QJBALV6UgkVnsIbkkKCOyRGv2syT3S7kOv1J+eamGcOGSJcSdrXwZiHoArcCZrYcIhOxOWB/m47ymfE1Dw/+QjzxlUCQCmnGFUO9zN862mKYjEkjDN65n1IUB9Fmc1msHkIZAQaQknmxmCIOHC75u4W0PGRyVzq8KkxpNBq62ICl7xmsPM=">
<br/>
<input type="submit" name="submit" value="确定提交支付" />
    
    </form>

  </body>
</html>
