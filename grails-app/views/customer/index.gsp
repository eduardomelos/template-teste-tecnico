<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Clientes</title>
    </head>
    <body>
        <button type="button" class="btn btn-primary" style="margin: 20px" data-toggle="modal" data-target="#create-customer-modal">
            Cadastrar
        </button>

        <g:if test="${flash.message}">
            <div class="alert alert-${flash.type} alert-dismissible fade show" role="alert">
                <strong>${flash.message}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </g:if>

        <div id="list-customer" class="content scaffold-list" role="main">
            <g:if test="${customerList}">
                <table class="table">
                    <thead class="thead">
                        <tr>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Celular</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each var="customer" in="${customerList}">
                        <tr>
                            <td>${customer.name}</td>
                            <td>${customer.email}</td>
                            <td>${customer.mobilePhone}</td>
                            <td>
                                <button type="#" class="btn btn-default">
                                    <a href="<g:createLink controller='customer' action='show' id='${customer.id}'/>">Detalhes</a>
                                </button>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </g:if>
            <g:else>
                <div class="alert alert-dark" role="alert">
                    Você ainda não possui clientes cadastrados.
                </div>
            </g:else>
        </div>

        <g:render template="templates/modal/create/createModal" />
    </body>
</html>
