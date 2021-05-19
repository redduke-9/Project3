<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Rate the seller</title>
        <link rel="stylesheet" href="jquery.rating.css">
        <script src="jquery.js"></script>
        <script src="jquery.rating.js"></script>
    </head>
<body style="background-color:powderblue;">  
<center>
        <form action="RateSeller" method="post">
        <h3>
        Auction closes and moves to auction history.<br/>
        Seller account has been credited.<br/>
        Email sent to seller with shipping details<br/> <br/> <br/></h3>
        <h4>
        Select a rating for the seller<br/>
            <input type="radio" name="rating" value="1" class="star">
            <input type="radio" name="rating" value="2" class="star">
            <input type="radio" name="rating" value="3" class="star">
            <input type="radio" name="rating" value="4" class="star">
            <input type="radio" name="rating" value="5" class="star"><br></h4>
            <br>
            ENTER ID  <input type="text" name="userid"/>
            <br><br>
            <input type="submit" name="submitrating" value="Submit Rating">
            <input type="hidden" name="aid" value=<%=request.getAttribute("auctionid") %>>
            <input type="hidden" name="bid" value=<%=request.getAttribute("buyerid") %>>
            </form>
            </center>
    </body>
</html>