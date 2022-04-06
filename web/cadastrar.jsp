<%-- 
    Document   : cadastrar
    Created on : 05/04/2022, 10:56:13
    Author     : sala306b
--%>
<%@page import="modelo.Usuario"%>
<%
    Usuario user = (Usuario) request.getAttribute("idusuario");
    



%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>

        <div class="container">

            <form action="ClienteServlet" method="POST">

                <input type="hidden" name="idusuario"
                       value="<%= user.getId() %>">
                
                <div class="row">
                    <div class="col-2">
                        <label>
                            ID:
                        </label>
                    </div> 
                    <div class="col-1">
                        <input class="form-control"
                               size="5" 
                               value="" 
                               type="text" name="idcliente" />
                    </div>  
                    <div class="col-9"></div> 
                </div>

                <div class="row">
                    <div class="col-2">
                        <label>
                            Nome:
                        </label>
                    </div> 
                    <div class="col-8">
                        <input class="form-control"
                               value="" 
                               type="text" name="idcliente" />
                    </div>  
                    <div class="col-3"></div> 
                </div>

                <div class="row">

                    <div class="col-2">
                        <label>
                            Data Nascimento:
                        </label>
                    </div> 
                    <div class="col-3">
                        <input class="form-control"
                               type="date" name="datanascimento" />
                    </div> 

                    <div class="col-1">
                        <label>
                            <label for="">Sexo:</label>
                        </label>
                    </div> 
                    <div class="col-4">

                        <input id="rdbM"

                               type="radio" 
                               name="sexo"
                               value="M"/>
                        <label for="rdbM">Masculino</label>

                        <input id="rdbF"

                               type="radio" 
                               name="sexo"
                               value="F"/>
                        <label for="rdbF">Feminino</label> 

                        <input id="rdbO"

                               type="radio" 
                               name="sexo"
                               value="O"/>
                        <label for="rdbO">Outro</label>

                    </div> 
                    <div class="col-3"></div> 
                </div>



                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-2">
                        <button
                            type="submit"
                            class="btn btn-success">
                            Salvar</button>
                    </div>
                    <div class="col-5"></div>

                </div>

        </div>
    </form>

    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.mask.js"></script>

</body>
</html>
