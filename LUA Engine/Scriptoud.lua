


entered = false;

function story(aName)
	if(aName == "start") then
		playMusic("background.wav")
		setBackground("coverGame.JPG")
		createButton("exit", "Decide this might be the right time to jump into that hole a few miles back.")
		createButton("entrance", "Enter")
	end
	if(aName == "entrance") then
		if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
		CLS();
		setBackground("corridor.JPG");
		createTextfield("You've entered the empty corridor, it seems abandoned.")
		createButton("leftHallway", "Go to the hallway on your left");
		createButton("rightHallway", "Go to the hallway on your right")
		createButton("upStairs", "go up the stairs")
	end
	if(aName == "leftHallway") then
		playSound("footstep.wav")
		CLS();
		setBackground("library.jpg")
		createTextfield("You stumble upon an ancient library, but once you look closer it appears all books contain demonic incantations.")
		createButton("entrance", "Go back to the corridor.");
		if(hasSpell == false) then
			createButton("searchBooks", "Take a closer look at the books")
		end
	end
	if(aName == "searchBooks") then
		CLS();
		playSound("pageFlip.wav")
		createTextfield("It seems you have learned a spell.. no idea what it does though")
		createButton("entrance", "You go back to the main hall")
		hasSpell = true;
	end
	if(aName == "rightHallway") then
		CLS()
		playSound("footstep.wav")
		setBackground("rightHallway.jpg")
		if(castSpellLib == true) then
			createTextfield("The old living room has a green flare to it")
		else
			createTextfield("You enter an old living room. Even though the place looked entirely abandoned, the fire is somehow lit.")
		end
		
		createButton("entrance", "You warm up at the fire and leave the room")
		if(hasSpell == true and castSpellLib == false) then
			createButton("rightHallwaySpell", "Recite the words of incantation learned from the library")
		end
	end
	if(aName == "rightHallwaySpell") then
		CLS()
		createTextfield("The fire turns eerily green")
		castSpellLib = true;
		createButton("entrance", "The fire is warmer now, you heat up and go back to the main hall")
	end
	if(aName == "upStairs") then
	CLS()
	playSound("footstep.wav")
		if(hasSpell == true and castSpellLib == true) then
			setBackground("CryptLord.jpg")
			createTextfield("Thank you for burning my flame, you can join me now in my army of DARKNESSSS")
			createButton("exit", "You praise the Dark Lord for his gift and together you shall scour the night in search of prey")
		else
			setBackground("CryptQueen.jpg")
			createTextfield("You have been deemed unworthy, you shall be the refreshments of my children and I, Hahahahaha")
			createButton("exit", "You faint as the crypt queen slowly moves towards you.. with your last second of consciousness you see the fangs of the lady extend.....")
		end
	end
	if(aName == "exit") then
		exitGame();
	end
end

