<#--<#include "security.ftl">-->
<#--<#import "login.ftl" as l>-->

<nav class="navbar navbar-expand-lg navbar-light bg-light"><#--описание ширины бара навигации и цветовой схемы-->
  <a class="navbar-brand" href="/">Messenger</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"><#--<используем маркированный упорядоченный список>-->
      <li class="nav-item"><#--<#каждый из элементов списка - это элемент меню-->
        <a class="nav-link" href="/">Home</a>
      </li>
      <li class="nav-item"><#--<#каждый из элементов списка - это элемент меню-->
        <a class="nav-link" href="/main">Messages List</a>
      </li>
      <li class="nav-item"><#--<#каждый из элементов списка - это элемент меню-->
        <a class="nav-link" href="/user">User list</a>
      </li>
    </ul>
  </div>
</nav>