<%-- 
    Document   : checkout
    Created on : Jul 10, 2021, 12:31:46 PM
    Author     : ariff
--%>

<form class="needs-validation" novalidate action="checkout-process.jsp" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="productName">Name *</label>
                        <input type="text" name="productName" class="form-control" id="productName" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productCategory">Category *</label>
                        <select class="form-control" name="productCategory" id="productCategory">
                            <option value="Laptop">Laptop</option>
                            <option value="PC">PC</option>
                            <option value="Printers">Printers</option>
                            <option value="Peripherals">Peripherals</option>
                            <option value="Others and Accessories">Others and Accessories</option>
                        </select>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice">Price *</label>
                        <input type="int" name="productPrice" class="form-control" id="productPrice" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productCondition">Condition *</label>
                        <select class="form-control" name="productCondition" id="productCondition">
                            <option value="New">New</option>
                            <option value="Used">Used</option>
                        </select>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="totalStock">In Stock *</label>
                        <input type="int" name="totalStock" class="form-control" id="totalStock" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productDesc">Description *</label>
                        <input type="text" name="productDesc" class="form-control" id="productDesc" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productImage">Image *</label>
                        <input type="file" name="productImage" class="form-control" id="productImage" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="col-12 d-flex shopping-box">
                        <label ></label>
                        <input type="submit" class="ml-auto btn hvr-hover" value="Add">
                    </div>
                    <hr class="mb-1"> 
                </form>