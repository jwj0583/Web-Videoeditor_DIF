function getContextPath(){
    var hostIndex=location.href.indexOf(location.host) + location.host.length;
    var contextPath=location.href.substring(hostIndex,location.href.indexOf("/",hostIndex+1));
    return contextPath;
}
 function outFn() {
	location.href= getContextPath()+"/logout.do";
}	
