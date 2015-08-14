(in-package :pvs)

(mapc #'(lambda (entry)
	  ;;             nt-name     oper         table-index   value
          (set-prec-info (car entry) (cadr entry) (caddr entry) (cadddr entry)
                         pvs-prec-info))
      ;; table-index 0: initial; 1: medial left; 2: medial right; 3: aggregate
      '((type-expr sbst::[ 0 10)
	(type-expr jux 1 20)
        (type-expr jux 2 21)
	(expr sbst::<> 0 200) (expr sbst::◇ 0 200) (expr sbst::□ 0 200)
	(expr sbst::+ 0 170) (expr sbst::- 0 170)
	(expr sbst::⊕ 0 170) (expr sbst::⊖ 0 170)
        (expr sbst::~ 0 80) (expr sbst::NOT 0 80) (expr sbst::¬ 0 80)
        (expr jux 1 230) (expr sbst::|`| 1 220)
        (expr sbst::^^ 1 210) (expr sbst::^ 1 210)
        (expr sbst::HAS_TYPE 1 190) (expr sbst::|::| 1 190)
        (expr sbst::|:| 1 190) (expr sbst::O 1 180) (expr sbst::∘ 1 180)
        (expr sbst::// 1 160) (expr sbst::** 1 160)
        (expr sbst::/ 1 160) (expr sbst::* 1 160)
	(expr sbst::⊘ 1 160) (expr sbst::⊗ 1 160)
	(expr sbst::⊙ 1 160) (expr sbst::⊛ 1 160)
        (expr sbst::⨂ 1 160) (expr sbst::⨀ 1 160)
	(expr sbst::× 1 160) (expr sbst::÷ 1 160)
        (expr sbst::⊠ 1 160) (expr sbst::∩ 1 160)
	(expr sbst::⊓ 1 160) (expr sbst::⋀ 1 160)
	(expr sbst::⋂ 1 160)
        (expr sbst::~ 1 150) (expr sbst::++ 1 150)
        (expr sbst::- 1 150) (expr sbst::+ 1 150)
	(expr sbst::⊕ 1 150) (expr sbst::⊖ 1 150)
	(expr sbst::⨁ 1 150) (expr sbst::± 1 150)
	(expr sbst::∓ 1 150) (expr sbst::∔ 1 150)
	(expr sbst::⊞ 1 150) (expr sbst::⊟ 1 150)
	(expr sbst::⊎ 1 150) (expr sbst::∪ 1 150)
	(expr sbst::⊔ 1 150) (expr sbst::⋁ 1 150)
	(expr sbst::⋃ 1 150) (expr sbst::∼ 1 145)
	(expr sbst::≁ 1 145) (expr sbst::≃ 1 145)
	(expr sbst::≅ 1 145) (expr sbst::≇ 1 145)
	(expr sbst::≈ 1 145) (expr sbst::≉ 1 145)
	(expr sbst::≍ 1 145) (expr sbst::≎ 1 145)
	(expr sbst::≏ 1 145) (expr sbst::≐ 1 145)
	(expr sbst::≗ 1 145) (expr sbst::≙ 1 145)
	(expr sbst::≡ 1 145) (expr sbst::⋈ 1 145)
	(expr sbst::≤ 1 145) (expr sbst::≥ 1 145)
	(expr sbst::≦ 1 145) (expr sbst::≧ 1 145)
	(expr sbst::≨ 1 145) (expr sbst::≩ 1 145)
	(expr sbst::≪ 1 145) (expr sbst::≫ 1 145)
	(expr sbst::≮ 1 145) (expr sbst::≯ 1 145)
	(expr sbst::≰ 1 145) (expr sbst::≱ 1 145)
	(expr sbst::≺ 1 145) (expr sbst::≻ 1 145)
	(expr sbst::▷ 1 145) (expr sbst::◁ 1 145)
	(expr sbst::∈ 1 145) (expr sbst::∉ 1 145)
	(expr sbst::∋ 1 145) (expr sbst::⊂ 1 145)
	(expr sbst::⊃ 1 145) (expr sbst::⊄ 1 145)
	(expr sbst::⊊ 1 145) (expr sbst::⊋ 1 145)
	(expr sbst::⊅ 1 145) (expr sbst::⊆ 1 145)
	(expr sbst::⊇ 1 145) (expr sbst::⊏ 1 145)
	(expr sbst::⊐ 1 145) (expr sbst::• 1 145)
	(expr sbst::← 1 145) (expr sbst::↑ 1 145)
	(expr sbst::→ 1 145) (expr sbst::↓ 1 145)
	(expr sbst::↝ 1 145) (expr sbst::↦ 1 145)
	(expr sbst::⇐ 1 145) (expr sbst::⇑ 1 145)
	(expr sbst::⇓ 1 145) (expr sbst::∇ 1 145)
	(expr sbst::⊣ 1 145) (expr sbst::⊥ 1 145)
	(expr sbst::⊩ 1 145) (expr sbst::◯ 1 145)
	(expr sbst::★ 1 145) (expr sbst::✠ 1 145)
        (expr sbst::\|\| 1 140) (expr sbst::|##| 1 140)
        (expr sbst::@@ 1 140) (expr sbst::|#| 1 130)
        (expr sbst::@ 1 130) (expr sbst::IN 1 120)
        (expr sbst::WHERE 1 120) (expr sbst::WITH 1 110)
        (expr sbst::\|> 1 100) (expr sbst::<\| 1 100)
        (expr sbst::>>= 1 100) (expr sbst::<<= 1 100)
        (expr sbst::>> 1 100) (expr sbst::<< 1 100)
        (expr sbst::>= 1 100) (expr sbst::> 1 100)
        (expr sbst::<= 1 100) (expr sbst::< 1 100)
        (expr sbst::== 1 90) (expr sbst::/= 1 90) (expr sbst::≠ 1 90)
        (expr sbst::= 1 90) (expr sbst::ANDTHEN 1 71)
        (expr sbst::&& 1 71) (expr sbst::/\\ 1 71) (expr sbst::∧ 1 71)
        (expr sbst::& 1 71) (expr sbst::AND 1 71)
        (expr sbst::ORELSE 1 61) (expr sbst::XOR 1 61)
        (expr sbst::\\/ 1 61) (expr sbst::∨ 1 61) (expr sbst::OR 1 61)
        (expr sbst::WHEN 1 51) (expr sbst::=> 1 51)
        (expr sbst::IMPLIES 1 51) (expr sbst::<=> 1 41)
        (expr sbst::IFF 1 41) (expr sbst::\|= 1 31) (expr sbst::⊨ 1 31)
        (expr sbst::\|- 1 31) (expr sbst::⊢ 1 31) (expr sbst::\| 1 20)
        (expr jux 2 231) (expr sbst::|`| 2 221)
        (expr sbst::^^ 2 211) (expr sbst::^ 2 211)
        (expr sbst::HAS_TYPE 2 191) (expr sbst::|::| 2 191)
        (expr sbst::|:| 2 191) (expr sbst::O 2 181) (expr sbst::∘ 2 181)
        (expr sbst::// 2 161) (expr sbst::** 2 161)
        (expr sbst::/ 2 161) (expr sbst::* 2 161)
	(expr sbst::⊘ 2 161) (expr sbst::⊗ 2 161)
	(expr sbst::⊙ 2 161) (expr sbst::⊛ 2 161)
        (expr sbst::⨂ 2 161) (expr sbst::⨀ 2 161)
	(expr sbst::× 2 161) (expr sbst::÷ 2 161)
        (expr sbst::⊠ 2 161) (expr sbst::∩ 2 161)
	(expr sbst::⊓ 2 161) (expr sbst::⋀ 2 161)
	(expr sbst::⋂ 2 161)
        (expr sbst::~ 2 151) (expr sbst::++ 2 151)
        (expr sbst::- 2 151) (expr sbst::+ 2 151)
	(expr sbst::⊕ 2 151) (expr sbst::⊖ 2 151)
	(expr sbst::⨁ 2 151) (expr sbst::± 2 151)
	(expr sbst::∓ 2 151) (expr sbst::∔ 2 151)
	(expr sbst::⊞ 2 151) (expr sbst::⊟ 2 151)
	(expr sbst::⊎ 2 151) (expr sbst::∪ 2 151)
	(expr sbst::⊔ 2 151) (expr sbst::⋁ 2 151)
	(expr sbst::⋃ 2 151) (expr sbst::∼ 2 146)
	(expr sbst::≁ 2 146) (expr sbst::≃ 2 146)
	(expr sbst::≅ 2 146) (expr sbst::≇ 2 146)
	(expr sbst::≈ 2 146) (expr sbst::≉ 2 146)
	(expr sbst::≍ 2 146) (expr sbst::≎ 2 146)
	(expr sbst::≏ 2 146) (expr sbst::≐ 2 146)
	(expr sbst::≗ 2 146) (expr sbst::≙ 2 146)
	(expr sbst::≡ 2 146) (expr sbst::⋈ 2 146)
	(expr sbst::≤ 2 146) (expr sbst::≥ 2 146)
	(expr sbst::≦ 2 146) (expr sbst::≧ 2 146)
	(expr sbst::≨ 2 146) (expr sbst::≩ 2 146)
	(expr sbst::≪ 2 146) (expr sbst::≫ 2 146)
	(expr sbst::≮ 2 146) (expr sbst::≯ 2 146)
	(expr sbst::≰ 2 146) (expr sbst::≱ 2 146)
	(expr sbst::≺ 2 146) (expr sbst::≻ 2 146)
	(expr sbst::▷ 2 146) (expr sbst::◁ 2 146)
	(expr sbst::∈ 2 146) (expr sbst::∉ 2 146)
	(expr sbst::∋ 2 146) (expr sbst::⊂ 2 146)
	(expr sbst::⊃ 2 146) (expr sbst::⊄ 2 146)
	(expr sbst::⊊ 2 146) (expr sbst::⊋ 2 146)
	(expr sbst::⊅ 2 146) (expr sbst::⊆ 2 146)
	(expr sbst::⊇ 2 146) (expr sbst::⊏ 2 146)
	(expr sbst::⊐ 2 146) (expr sbst::• 2 146)
	(expr sbst::← 2 146) (expr sbst::↑ 2 146)
	(expr sbst::→ 2 146) (expr sbst::↓ 2 146)
	(expr sbst::↝ 2 146) (expr sbst::↦ 2 146)
	(expr sbst::⇐ 2 146) (expr sbst::⇑ 2 146)
	(expr sbst::⇓ 2 146) (expr sbst::∇ 2 146)
	(expr sbst::⊣ 2 146) (expr sbst::⊥ 2 146)
	(expr sbst::⊩ 2 146) (expr sbst::◯ 2 146)
	(expr sbst::★ 2 146) (expr sbst::✠ 2 146)
        (expr sbst::\|\| 2 141) (expr sbst::|##| 2 141)
        (expr sbst::@@ 2 141) (expr sbst::|#| 2 131)
        (expr sbst::@ 2 131) (expr sbst::IN 2 121)
        (expr sbst::WHERE 2 121) (expr sbst::WITH 2 111)
        (expr sbst::\|> 2 101) (expr sbst::<\| 2 101)
        (expr sbst::>>= 2 101) (expr sbst::<<= 2 101)
        (expr sbst::>> 2 101) (expr sbst::<< 2 101)
        (expr sbst::>= 2 101) (expr sbst::> 2 101)
        (expr sbst::<= 2 101) (expr sbst::< 2 101)
        (expr sbst::== 2 91) (expr sbst::/= 2 91) (expr sbst::≠ 2 91)
        (expr sbst::= 2 91) (expr sbst::ANDTHEN 2 70)
        (expr sbst::&& 2 70) (expr sbst::/\\ 2 70) (expr sbst::∧ 2 70)
        (expr sbst::& 2 70) (expr sbst::AND 2 70)
        (expr sbst::ORELSE 2 60) (expr sbst::XOR 2 60)
        (expr sbst::\\/ 2 60) (expr sbst::∨ 2 60) (expr sbst::OR 2 60)
        (expr sbst::WHEN 2 50) (expr sbst::=> 2 50)
        (expr sbst::IMPLIES 2 50) (expr sbst::<=> 2 40)
        (expr sbst::IFF 2 40) (expr sbst::\|= 2 30) (expr sbst::⊨ 2 30)
        (expr sbst::\|- 2 30) (expr sbst::⊢ 2 30) (expr sbst::\| 2 21)
        (expr sbst::IN 3 10) (expr sbst::HAS_TYPE 3 10)))