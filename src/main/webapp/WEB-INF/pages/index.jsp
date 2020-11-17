<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>TennisClub</h1>
            <p class="lead">
                This TennisClub app is designed to be a good way to keep track of tennis signups
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <div class="list-group">
                <h2>Items in Database:</h2>
                <c:forEach items="${requestScope.version}" var="item" varStatus="vs">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <button type="button" class="list-group-item list-group-item-action my-card" style="background-color: lightblue">
                            ${item}
                        </button>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
        <c:forEach items="${requestScope.version}" var="item" varStatus="vs">
            <!-- Start of Modal -->
            <div class="modal fade" id="${vs.index}Modal" tabindex="-1" aria-labelledby="${vs.index}ModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Item no. ${item}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Item Name: ${item}
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <!-- End of Modal -->
    </div>
</div>
</div>