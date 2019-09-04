function story(aName)
	if(aName == "start") then
			playMusic("intro.wav")
			setBackground("coverGame.JPG")
			createButton("exit", "Exit")
			createButton("entrance", "Play")
		end


	if(aName == "entrance") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
			else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("001.JPG");
			createButton("3wayDirection", "Go down.")
		end
	
			
	if(aName == "3wayDirection") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("002.JPG");
			createButton("right1", "Go right.")
			createButton("left1", "Go left.")
		end


	if(aName == "left1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("003.JPG");
			createTextfield("There is no way through the trees! I have to go back.")
			createButton("3wayDirection", "Go right")
		end


	if(aName == "right1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("004.JPG");
			createButton("up1", "Go up.")
			createButton("underground1", "Go downstairs.")
		end


	if(aName == "up1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("005.JPG");
			createTextfield("Oof. The road stops here after a while.")
			createButton("right1", "Go back.")
		end


	if(aName == "underground1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("006.JPG");
			createTextfield("I have to run past these monsters!")
			createButton("undergroundup1", "Go up.")
			createButton("right1", "Go back upstairs.")
		end


	if(aName == "undergroundup1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("007.JPG");
			createTextfield("I'm close to the end, I know it!")
			createButton("Killroom", "Go up.")
			createButton("undergroundright1", "Go right.")
			createButton("underground1", "Go back")
		end


	if(aName == "undergroundright1") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("008.JPG");
			createTextfield("Only this room left.")
			createButton("undergroundEnd", "Go up.")
			createButton("undergroundup1", "Go back")
		end


	if(aName == "undergroundEnd") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("009.JPG");
			createTextfield("The end!")
			createButton("exit","Exit")
			math.random()
			range = math.random(1, 2)
			print(range)
		end


	if(aName == "Killroom") then
	if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
			CLS();
			setBackground("007killroom.JPG");
			createTextfield("You got killed by monsters!!")
			createButton("exit","Exit")
		end


	if(aName == "exit") then
		exitGame();
		end


end