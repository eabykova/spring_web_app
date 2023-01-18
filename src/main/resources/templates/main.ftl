<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
  <div>
      <@l.logout />
    <span><a href="/user">User List</a></span>
  </div>
  <div>
    <form method="post" enctype="multipart/form-data">
      <input type="text" name="text" placeholder="Put the Message" />
      <input type="text" name="tag" placeholder="Tag">
      <input type="file" name="file"><#--поле для загрузки файлов-->
      <input type="hidden" name="_csrf" value="${_csrf.token}" />
      <button type="submit">Add</button>
    </form>
  </div>
  <div>Messages List</div>
  <form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Find</button>
  </form>
    <#list messages as message>
      <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div><#--отображение картинки в цикле-->
            <#if message.filename??><#--условие, что в mesage есть поле fiename-->
              <img src="/img/${message.filename}"><#--директория хранения файлов-->
            </#if>
        </div>
      </div>
    <#else>
      No message
    </#list>
</@c.page>
/messenger/src/main/uploads