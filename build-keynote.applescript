-- Meridian Health Demo Deck — Keynote Builder
-- Slide dimensions: 1920 x 1080 (16:9)

tell application "Keynote"
	activate
	
	-- Create new document with white theme
	set thisDoc to make new document with properties {document theme:theme "White", width:1920, height:1080}
	
	tell thisDoc
		-- Delete the default first slide
		delete slide 1
		
		-- ==========================================
		-- SLIDE 1: The story of your future
		-- ==========================================
		set slide1 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide1
			-- Background: light gray #ECF2FD
			set base layout to slide layout "Blank"
			
			-- Meridian Health wordmark (top left)
			set meridianMark to make new text item with properties {object text:"meridian health", position:{40, 30}, width:300, height:50}
			tell meridianMark
				set size of its object text to 28
				set font of its object text to "DM Sans"
				-- "meridian" in navy bold
				set color of characters 1 thru 8 of its object text to {10, 46, 72}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				-- "health" in teal
				set color of characters 10 thru 16 of its object text to {93, 190, 183}
			end tell
			
			-- Main heading
			set heading to make new text item with properties {object text:"The story of your future is written on top of two curves.", position:{100, 80}, width:1720, height:200}
			tell heading
				set size of its object text to 64
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {10, 46, 72}
				set alignment of its object text to center
				-- "two curves." in teal
				set color of characters 46 thru 56 of its object text to {93, 190, 183}
			end tell
			
			-- Slide number
			set slideNum to make new text item with properties {object text:"01", position:{1860, 1040}, width:40, height:30}
			tell slideNum
				set size of its object text to 14
				set color of its object text to {180, 180, 180}
			end tell
		end tell
		
		-- ==========================================
		-- SLIDE 2: Blood, Behavior, DNA
		-- ==========================================
		set slide2 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide2
			-- Meridian wordmark
			set meridianMark2 to make new text item with properties {object text:"meridian health", position:{40, 30}, width:300, height:50}
			tell meridianMark2
				set size of its object text to 28
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {10, 46, 72}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {93, 190, 183}
			end tell
			
			-- Main heading
			set heading2 to make new text item with properties {object text:"Those curves are shaped by your blood, behavior, and DNA.", position:{200, 150}, width:1520, height:250}
			tell heading2
				set size of its object text to 56
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {10, 46, 72}
				set alignment of its object text to center
				-- Bold the key words
				set color of characters 38 thru 42 of its object text to {10, 46, 72}
				set font of characters 38 thru 42 of its object text to "Bricolage Grotesque ExtraBold"
			end tell
			
			-- Three columns: Blood, Behavior, DNA
			-- Blood card
			set bloodTitle to make new text item with properties {object text:"Blood", position:{200, 500}, width:400, height:50}
			tell bloodTitle
				set size of its object text to 28
				set font of its object text to "DM Sans Bold"
				set color of its object text to {10, 46, 72}
			end tell
			set bloodDesc to make new text item with properties {object text:"Cholesterol, inflammation, hormones — the biomarkers that explain your body & tracking right now.", position:{200, 555}, width:400, height:100}
			tell bloodDesc
				set size of its object text to 16
				set font of its object text to "DM Sans"
				set color of its object text to {100, 110, 130}
			end tell
			
			-- Behavior card
			set behavTitle to make new text item with properties {object text:"Behavior", position:{760, 500}, width:400, height:50}
			tell behavTitle
				set size of its object text to 28
				set font of its object text to "DM Sans Bold"
				set color of its object text to {10, 46, 72}
			end tell
			set behavDesc to make new text item with properties {object text:"Fitness, sleep, training consistency — the daily choices that move your curve up or down.", position:{760, 555}, width:400, height:100}
			tell behavDesc
				set size of its object text to 16
				set font of its object text to "DM Sans"
				set color of its object text to {100, 110, 130}
			end tell
			
			-- DNA card
			set dnaTitle to make new text item with properties {object text:"DNA", position:{1320, 500}, width:400, height:50}
			tell dnaTitle
				set size of its object text to 28
				set font of its object text to "DM Sans Bold"
				set color of its object text to {10, 46, 72}
			end tell
			set dnaDesc to make new text item with properties {object text:"Genetic variants that set your baseline — and help you know what matters most, what to test, and how to act.", position:{1320, 555}, width:400, height:100}
			tell dnaDesc
				set size of its object text to 16
				set font of its object text to "DM Sans"
				set color of its object text to {100, 110, 130}
			end tell
			
			set slideNum2 to make new text item with properties {object text:"02", position:{1860, 1040}, width:40, height:30}
			tell slideNum2
				set size of its object text to 14
				set color of its object text to {180, 180, 180}
			end tell
		end tell
		
		-- ==========================================
		-- SLIDE 3: Bend the curves
		-- ==========================================
		set slide3 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide3
			set meridianMark3 to make new text item with properties {object text:"meridian health", position:{40, 30}, width:300, height:50}
			tell meridianMark3
				set size of its object text to 28
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {10, 46, 72}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {93, 190, 183}
			end tell
			
			set heading3 to make new text item with properties {object text:"If you know what to do, you can bend the curves.", position:{200, 150}, width:1520, height:250}
			tell heading3
				set size of its object text to 56
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {10, 46, 72}
				set alignment of its object text to center
			end tell
			
			set slideNum3 to make new text item with properties {object text:"03", position:{1860, 1040}, width:40, height:30}
			tell slideNum3
				set size of its object text to 14
				set color of its object text to {180, 180, 180}
			end tell
		end tell
		
		-- ==========================================
		-- SLIDE 4: 30 more years
		-- ==========================================
		set slide4 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide4
			-- Dark navy background
			-- Note: background fill requires different approach
			
			set bigNum to make new text item with properties {object text:"30", position:{80, 200}, width:600, height:250}
			tell bigNum
				set size of its object text to 200
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {93, 190, 183}
			end tell
			
			set moreYears to make new text item with properties {object text:"more years", position:{80, 430}, width:500, height:60}
			tell moreYears
				set size of its object text to 36
				set font of its object text to "DM Sans Bold"
				set color of its object text to {236, 242, 253}
			end tell
			
			set subtext to make new text item with properties {object text:"of being anything you want. That's the gap between average and best possible.", position:{80, 500}, width:500, height:80}
			tell subtext
				set size of its object text to 16
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
			end tell
			
			-- Meridian wordmark (light version for dark bg)
			set meridianMark4 to make new text item with properties {object text:"meridian health", position:{40, 1000}, width:300, height:50}
			tell meridianMark4
				set size of its object text to 28
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {153, 213, 211}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {255, 255, 255}
			end tell
			
			set slideNum4 to make new text item with properties {object text:"04", position:{1860, 1040}, width:40, height:30}
			tell slideNum4
				set size of its object text to 14
				set color of its object text to {60, 60, 80}
			end tell
		end tell
		
		-- ==========================================
		-- SLIDE 5: What if?
		-- ==========================================
		set slide5 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide5
			set meridianMark5 to make new text item with properties {object text:"meridian health", position:{40, 30}, width:300, height:50}
			tell meridianMark5
				set size of its object text to 28
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {10, 46, 72}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {93, 190, 183}
			end tell
			
			-- "What if?" heading
			set heading5 to make new text item with properties {object text:"What if?", position:{200, 150}, width:1520, height:150}
			tell heading5
				set size of its object text to 80
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {10, 46, 72}
				set alignment of its object text to center
			end tell
			
			-- Meridian pill (dark navy rounded rect)
			-- Left pill background
			
			-- Meridian text in pill
			set merPill to make new text item with properties {object text:"meridian health", position:{200, 480}, width:350, height:60}
			tell merPill
				set size of its object text to 32
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {153, 213, 211}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {255, 255, 255}
			end tell
			
			set merSub to make new text item with properties {object text:"HEALTH INTELLIGENCE", position:{200, 535}, width:350, height:30}
			tell merSub
				set size of its object text to 12
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
				set alignment of its object text to center
			end tell
			
			-- × connector
			set connector to make new text item with properties {object text:"×", position:{580, 480}, width:60, height:60}
			tell connector
				set size of its object text to 36
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
				set alignment of its object text to center
			end tell
			
			-- Colonial Life text
			set colText to make new text item with properties {object text:"Colonial Life.", position:{670, 480}, width:350, height:60}
			tell colText
				set size of its object text to 32
				set font of its object text to "DM Sans Bold"
				set color of its object text to {255, 255, 255}
			end tell
			
			set colSub to make new text item with properties {object text:"CRITICAL ILLNESS", position:{670, 535}, width:350, height:30}
			tell colSub
				set size of its object text to 12
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
				set alignment of its object text to center
			end tell
			
			-- = Executive CI
			set execCI to make new text item with properties {object text:"= Executive CI", position:{1100, 480}, width:400, height:60}
			tell execCI
				set size of its object text to 36
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {10, 46, 72}
			end tell
			
			-- Subtitle
			set sub5 to make new text item with properties {object text:"A new category: critical illness insurance supercharged with continuous health intelligence.", position:{200, 620}, width:1520, height:40}
			tell sub5
				set size of its object text to 16
				set font of its object text to "DM Sans"
				set color of its object text to {130, 140, 160}
				set alignment of its object text to center
			end tell
			
			set slideNum5 to make new text item with properties {object text:"05", position:{1860, 1040}, width:40, height:30}
			tell slideNum5
				set size of its object text to 14
				set color of its object text to {180, 180, 180}
			end tell
		end tell
		
		-- ==========================================
		-- SLIDE 6: What it could mean
		-- ==========================================
		set slide6 to make new slide with properties {base layout:slide layout "Blank"}
		tell slide6
			-- Dark navy background - need to handle separately
			
			-- Meridian wordmark (light for dark bg)
			set meridianMark6 to make new text item with properties {object text:"meridian health", position:{40, 30}, width:300, height:50}
			tell meridianMark6
				set size of its object text to 28
				set font of its object text to "DM Sans"
				set color of characters 1 thru 8 of its object text to {153, 213, 211}
				set font of characters 1 thru 8 of its object text to "DM Sans Bold"
				set color of characters 10 thru 16 of its object text to {255, 255, 255}
			end tell
			
			-- Heading
			set heading6 to make new text item with properties {object text:"What it could mean.", position:{200, 120}, width:1520, height:120}
			tell heading6
				set size of its object text to 52
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {236, 242, 253}
				set alignment of its object text to center
			end tell
			
			-- Card 1: 2-3×
			set card1title to make new text item with properties {object text:"2–3×", position:{100, 350}, width:500, height:80}
			tell card1title
				set size of its object text to 48
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {93, 190, 183}
			end tell
			set card1sub to make new text item with properties {object text:"Broker commissions", position:{100, 430}, width:500, height:40}
			tell card1sub
				set size of its object text to 20
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {236, 242, 253}
			end tell
			set card1desc to make new text item with properties {object text:"Meridian layer on top of base CI gives brokers a reason to sell — and earn 2–3× the commission of the base product alone.", position:{100, 480}, width:500, height:100}
			tell card1desc
				set size of its object text to 15
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
			end tell
			
			-- Card 2: Take share
			set card2title to make new text item with properties {object text:"Take share", position:{700, 350}, width:500, height:80}
			tell card2title
				set size of its object text to 48
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {93, 190, 183}
			end tell
			set card2sub to make new text item with properties {object text:"Displace the incumbent", position:{700, 430}, width:500, height:40}
			tell card2sub
				set size of its object text to 20
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {236, 242, 253}
			end tell
			set card2desc to make new text item with properties {object text:"A differentiated product gives brokers a reason to re-open every account. New story, new sale.", position:{700, 480}, width:500, height:100}
			tell card2desc
				set size of its object text to 15
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
			end tell
			
			-- Card 3: ↓ Claims
			set card3title to make new text item with properties {object text:"↓ Claims", position:{1300, 350}, width:500, height:80}
			tell card3title
				set size of its object text to 48
				set font of its object text to "Bricolage Grotesque ExtraBold"
				set color of its object text to {93, 190, 183}
			end tell
			set card3sub to make new text item with properties {object text:"Increased margins", position:{1300, 430}, width:500, height:40}
			tell card3sub
				set size of its object text to 20
				set font of its object text to "Bricolage Grotesque Bold"
				set color of its object text to {236, 242, 253}
			end tell
			set card3desc to make new text item with properties {object text:"If Meridian catches disease earlier and members act on it, the carrier's loss ratio improves. Better outcomes, lower claims, aligned incentives.", position:{1300, 480}, width:500, height:100}
			tell card3desc
				set size of its object text to 15
				set font of its object text to "DM Sans"
				set color of its object text to {150, 160, 180}
			end tell
			
			set slideNum6 to make new text item with properties {object text:"06", position:{1860, 1040}, width:40, height:30}
			tell slideNum6
				set size of its object text to 14
				set color of its object text to {60, 60, 80}
			end tell
		end tell
		
	end tell
	
end tell
