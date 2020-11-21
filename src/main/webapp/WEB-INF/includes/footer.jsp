<%@page contentType="text/html" pageEncoding="UTF-8" %>
<footer class="footer flex-shrink-0 text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="accordion d-lg-flex w-100 h-auto" id="accordion">
                        <div class="col-lg-3 col-md-12">
                            <a href="#one"
                               class="my-footerheader my-footerdropdown h3 nav-link py-0 d-block d-lg-none d-xl-none"
                               data-toggle="collapse" data-parent="#accordion">
                                Hvordan køber jeg?
                            </a>

                            <div class="h3 my-footerheader d-none d-lg-block d-xl-block">
                                Hvordan køber jeg?
                            </div>

                            <div class="collapse d-lg-flex" id="one" data-parent="#accordion">
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="my-footerlinks" href="#">Ofte Stillede spørgsmål</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Bliv kunde i Fog</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12">
                            <a href="#two"
                               class="h3 my-footerheader my-footerdropdown nav-link py-0 d-block d-lg-none d-xl-none"
                               data-toggle="collapse" data-parent="#accordion">
                                Aktuelt
                            </a>

                            <div class="h3 my-footerheader d-none d-lg-block d-xl-block">
                                Aktuelt
                            </div>

                            <div class="collapse d-lg-flex" id="two" data-parent="#accordion">
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="my-footerlinks" href="#">Tilbud</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Facebook</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Instagram</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">LinkedIn</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12">
                            <a href="#three" class="h3 my-footerheader my-footerdropdown nav-link py-0 d-block d-lg-none d-xl-none"
                               data-toggle="collapse" data-parent="#accordion">
                                Om Fog
                            </a>

                            <div class="h3 my-footerheader d-none d-lg-block d-xl-block">
                                Om Fog
                            </div>

                            <div class="collapse d-lg-flex" id="three" data-parent="#accordion">
                                <ul class="list-unstyled">
                                    <li>
                                        <a class="my-footerlinks" href="#">Åbningstider</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Om Fog</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Cookie-politik</a>
                                    </li>
                                    <li>
                                        <a class="my-footerlinks" href="#">Persondata</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12">
                            <p class="fog-info" style="padding-top: 20px">Johannes Fog</p>
                            <p class="fog-info">45 87 10 01</p>
                            <p class="fog-info">Send e-mail</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-top: 30px">
        <div class="row">
            <div class="bottom-footer d-lg-flex h-auto w-100">
                <div class="col-lg-8 col-md-12">
                    <p>
                        Johannes Fog A/S - Firskovvej 20 - 2800 Lyngby - CVR-nr. 16314439
                    </p>
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-3 col-md-12">
                    <p>
                        Fog version (${requestScope.version})
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
