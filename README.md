octopuss-e
==========

online bookmark manager

for convenient usage in any(?) web browser, offer a bookmarklet like:
<code>javascript:S=document.URL;T=document.title;if(S&&T){location.href='<%= request.protocol %><%= request.host_with_port %><%= new_bookmark_path %>?bookmark[url]='+encodeURIComponent(S)+'&bookmark[name]='+encodeURIComponent(T);}</code>
