@echo off
for %%b in (
  origin/challenges-group-fix-mouse-aiming
  origin/challenges-group-score  
  origin/challenges-group-one-more-wave	
  origin/challenges-group-artist-pixel-art
  origin/challenges-group-architect
  origin/challenges-group-creative-coder
  origin/challenges-group-continuous-laser-beam
  origin/challenges-group-teleportation 
) do (
  echo Merging %%b...
  git merge -X diff-algorithm=histogram %%b --no-edit
  if errorlevel 1 (
    echo CONFLICT sur %%b - stopping
    goto :end
  )
  echo Done: %%b
)
:end
pause