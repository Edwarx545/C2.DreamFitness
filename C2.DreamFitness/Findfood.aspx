<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findfood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <link rel = "stylesheet" href = "/src/findfood.css">
      <div class = "meal-wrapper">
  <div class = "meal-search">
    <h2 class = "title">Find Meals For Your Ingredients</h2>
    <blockquote class="bq">Real food doesn't have ingredients, real food is ingredients.<br>
      <cite>- Jamie Oliver</cite>
    </blockquote>

    <div class = "meal-search-box">
      <input type = "text" class = "search-control" placeholder="Enter an ingredient" id = "search-input">
      <button type = "submit" class = "search-btn btn" id = "search-btn">
       <i class="bi bi-search"></i>
      </button>
    </div>
  </div>
  <div class = "meal-result">
    <h2 class = "title">Your Search Results:</h2>
    <div id= "meal">
      <!-- meal item -->
          <div class = "meal-item">
            <div class = "meal-img">
              <img src = "/img/food1.jpg" alt = "food">
            </div>
            <div class = "meal-name">
              <h3>Vegetable rice rolls</h3>
              <a href = "#" class = "recipe-btn">Get Recipe</a>
            </div>
          </div>
          <div class = "meal-item">
            <div class = "meal-img">
                <img src = "/img/food2.jpg" alt = "food">
            </div>
            <div class = "meal-name">
                <h3>Purple cabbage</h3>
                <a href = "#" class = "recipe-btn">Get Recipe</a>
                </div>
           </div>
            <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food3.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Boiled gourd, fish and vegetables</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
            <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food4.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>3 slices of black bread</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food5.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Fish dishes</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food6.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Shredded chicken</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food7.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Cucumber salad</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food8.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>A few tomato slices</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food9.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>A bowl of oatmeal</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food10.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Stir-fried vermicelli with pork</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                        <div class = "meal-item">
              <div class = "meal-img">
                  <img src = "/img/food11.jpg" alt = "food">
              </div>
              <div class = "meal-name">
                  <h3>Boiled potatoes</h3>
                  <a href = "#" class = "recipe-btn">Get Recipe</a>
                  </div>
             </div>
                       <div class = "meal-item">
                 <div class = "meal-img">
                     <img src = "/img/food12.jpg" alt = "food">
                 </div>
                 <div class = "meal-name">
                     <h3>Boiled cabbage</h3>
                     <a href = "#" class = "recipe-btn">Get Recipe</a>
                     </div>
                </div>                      
      <!-- end of meal item -->
    </div>
  </div>


  <div class = "meal-details">
    <!-- recipe close btn -->
    <button type = "button" class = "btn recipe-close-btn" id = "recipe-close-btn">
      <i class = "fas fa-times"></i>
    </button>

    <!-- meal content -->
    <div class = "meal-details-content">
      <h2 class = "recipe-title">Meals Name Here</h2>
      <p class = "recipe-category">Category Name</p>
      <div class = "recipe-instruct">
        <h3>Instructions:</h3>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quo blanditiis quis accusantium natus! Porro, reiciendis maiores molestiae distinctio veniam ratione ex provident ipsa, soluta suscipit quam eos velit autem iste!</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet aliquam voluptatibus ad obcaecati magnam, esse numquam nisi ut adipisci in?</p>
      </div>
      <div class = "recipe-meal-img">
        <img src = "/img/food.jpg" alt = "">
      </div>
      <div class = "recipe-link">
        <a href = "#" target = "_blank">Watch Video</a>
      </div>
    </div>
  </div>
</div>

</body>
</asp:Content>
