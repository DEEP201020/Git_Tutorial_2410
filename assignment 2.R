tennis = function(p)
{
  End_game = TRUE
  
  
  steff_graf_points = 0
  Martina_points   = 0
  points_played = 0
  while(End_game)
  { outcome = sample(c(0,1), size = 1, prob = c(p,1-p))
  if(outcome == 0){
    
    steff_graf_points = steff_graf_points + 1
  } else {
    
    Martina_points = Martina_points + 1
  }
  points_played = points_played + 1
  if (Martina_points > 3 | steff_graf_points > 3) 
  {
    if (Martina_points - steff_graf_points > 1){
      ans1 = points_played
      End_game = FALSE
      
    }else if ( steff_graf_points - Martina_points > 1 ){
      
      ans1 = points_played
      End_game = FALSE
      
    }else{
      End_game = TRUE
    }
    
  }
  
  }
  
  return(ans1)  
}
games = replicate(1000, tennis(0.6))
ans = mean(games)
ans

