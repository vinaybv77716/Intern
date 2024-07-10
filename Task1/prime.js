window.addEventListener('scroll',function()
{
    if(window.pageYOffset >0)
    { 
    let sc=document.querySelector('.navbar')    
    sc.style.marginTop="10px"
    sc.style.transition="1s"
    }
    else{
        let sc=document.querySelector('.navbar')    
    sc.style.marginTop="0px"
    sc.style.transition="1s"
    }
   
})