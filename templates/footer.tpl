{if $SUBPAGENAV}
                        </div><!--end subpage rel-->
{/if}
                    </div><!-- end main-column-container -->
                    <div class="cl"></div>
                </div><!-- end main-column -->
                </div>     
{if $SIDEBARS && $SIDEBLOCKS.right}
                <div id="right-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.right}
                </div>
{/if}
{if $SIDEBARS && $SIDEBLOCKS.left}
                <div id="left-column" class="sidebar">
{include file="sidebar.tpl" blocks=$SIDEBLOCKS.left}
                </div>
{/if}
                  <div class="cb"></div> <br>
               
               
        </div><!-- main-wrapper -->  
         </div><!-- mainmiddle -->
    </div><!-- mainmiddlewrap -->
    
     <div id="footer-wrap">
      <div id="footer">
        <div class="cb"></div>
        <table><tr>
            <td id="left"><br></td>
            <td id="footer-container"> 
              
            
            </td></tr></table>
       
        <div class="cb"></div>
      </div><!-- footer -->
    </div><!-- footer-wrap -->
</div><!-- container -->
    
</body>
</html>