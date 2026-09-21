version 17.0
 
#delimit;
clear;
set mem 200m;
 
* INPUT ALL VARIABLES;
 
infix 
      /* IDN  LOCATIONS */
      rectype                1 -    2      srvy_yr                3 -    6 
  str hhx                    7 -   13      wtfa_a                14 -   23 
 
      /* UCF  LOCATIONS */
      urbrrl23              24 -   24      region                25 -   25 
      ppsu                  26 -   28      pstrat                29 -   31 
 
      /* FLG  LOCATIONS */
      hhrespsa_flg          32 -   32 
 
      /* GEN  LOCATIONS */
      proxyflag_a           33 -   33      proxyrel2_a           34 -   34 
      intv_qrt              35 -   35      intv_mon              36 -   37 
      hhstat_a              38 -   38      astatnew              39 -   39 
 
 
      /* HHC  LOCATIONS */
      afnow                 40 -   40      pcnt18uptc            41 -   41 
      pcntlt18tc            42 -   42      sex_a                 43 -   43 
      age65                 44 -   44      agep_a                45 -   46 
      hisp_a                47 -   47      hisdetp_a             48 -   48 
      raceallp_a            49 -   49      hispallp_a            50 -   51 
      educp_a               52 -   53 
 
      /* FAM  LOCATIONS */
      pcntadlt_a            54 -   54      pcntkids_a            55 -   55 
      over65flg_a           56 -   56      mltfamflg_a           57 -   57 
      maxeducp_a            58 -   59 
 
      /* HIS  LOCATIONS */
      phstat_a              60 -   60 
 
      /* LSF  LOCATIONS */
      lsatis4_a             61 -   61 
 
      /* HYP  LOCATIONS */
      hypev_a               62 -   62      hypdif_a              63 -   63 
      hyp12m_a              64 -   64      hypmed_a              65 -   65 
 
 
      /* CHL  LOCATIONS */
      chlev_a               66 -   66      chl12m_a              67 -   67 
      chlmed_a              68 -   68 
 
      /* CVC  LOCATIONS */
      chdev_a               69 -   69      angev_a               70 -   70 
      miev_a                71 -   71      strev_a               72 -   72 
 
 
      /* AST  LOCATIONS */
      asev_a                73 -   73      astill_a              74 -   74 
      asat12m_a             75 -   75      aser12m_a             76 -   76 
 
 
      /* CAN  LOCATIONS */
      canev_a               77 -   77      bladdcan_a            78 -   78 
      bladdagetc_a          79 -   80      bloodcan_a            81 -   81 
      bloodagetc_a          82 -   83      bonecan_a             84 -   84 
      boneagetc_a           85 -   86      braincan_a            87 -   87 
      brainagetc_a          88 -   89      breascan_a            90 -   90 
      breasagetc_a          91 -   92      cervican_a            93 -   93 
      cerviagetc_a          94 -   95      coloncan_a            96 -   96 
      colonagetc_a          97 -   98      esophcan_a            99 -   99 
      esophagetc_a         100 -  101      gallbcan_a           102 -  102 
      gallbagetc_a         103 -  104      laryncan_a           105 -  105 
      larynagetc_a         106 -  107      leukecan_a           108 -  108 
      leukeagetc_a         109 -  110      livercan_a           111 -  111 
      liveragetc_a         112 -  113      lungcan_a            114 -  114 
      lungagetc_a          115 -  116      lymphcan_a           117 -  117 
      lymphagetc_a         118 -  119      melancan_a           120 -  120 
      melanagetc_a         121 -  122      mouthcan_a           123 -  123 
      mouthagetc_a         124 -  125      ovarycan_a           126 -  126 
      ovaryagetc_a         127 -  128      pancrcan_a           129 -  129 
      pancragetc_a         130 -  131      prostcan_a           132 -  132 
      prostagetc_a         133 -  134      rectucan_a           135 -  135 
      rectuagetc_a         136 -  137      sknmcan_a            138 -  138 
      sknmagetc_a          139 -  140      sknnmcan_a           141 -  141 
      sknnmagetc_a         142 -  143      skndkcan_a           144 -  144 
      skndkagetc_a         145 -  146      stomacan_a           147 -  147 
      stomaagetc_a         148 -  149      throacan_a           150 -  150 
      throaagetc_a         151 -  152      thyrocan_a           153 -  153 
      thyroagetc_a         154 -  155      uterucan_a           156 -  156 
      uteruagetc_a         157 -  158      hdnckcan_a           159 -  159 
      hdnckagetc_a         160 -  161      colrccan_a           162 -  162 
      colrcagetc_a         163 -  164      othercanp_a          165 -  165 
      otheragetc_a         166 -  167      numcan_a             168 -  168 
 
 
      /* DIB  LOCATIONS */
      predib_a             169 -  169      gesdib_a             170 -  170 
      dibev_a              171 -  171      dibagetc_a           172 -  173 
      difyrstc1_a          174 -  175      dibpill_a            176 -  176 
      dibins_a             177 -  177      dibinstime_a         178 -  178 
      dibinsstop_a         179 -  179      dibinsstyr_a         180 -  180 
      dibglp_a             181 -  181      dibtype_a            182 -  182 
 
 
      /* CON  LOCATIONS */
      copdev_a             183 -  183      arthev_a             184 -  184 
      demenev_a            185 -  185      anxev_a              186 -  186 
      depev_a              187 -  187 
 
      /* RCN  LOCATIONS */
      kidweakev_a          188 -  188      hepev_a              189 -  189 
      liverev_a            190 -  190 
 
      /* SCE  LOCATIONS */
      crohnsev_a           191 -  191      ulccolev_a           192 -  192 
      psorev_a             193 -  193 
 
      /* CFS  LOCATIONS */
      cfsev_a              194 -  194      cfsnow_a             195 -  195 
 
 
      /* TSH  LOCATIONS */
      coldflu12m_a         196 -  196      drymth12m_a          197 -  197 
 
 
      /* ISN  LOCATIONS */
      medrxtrt_a           198 -  198      hlthcond_a           199 -  199 
 
 
      /* ALG  LOCATIONS */
      curresp_a            200 -  200      dxresp_a             201 -  201 
      curfood_a            202 -  202      dxfood_a             203 -  203 
      curskin_a            204 -  204      dxskin_a             205 -  205 
 
 
      /* BMI  LOCATIONS */
      pregnow_a            206 -  206      heighttc_a           207 -  208 
      weightlbtc_a         209 -  211      bmicat_a             212 -  212 
      bmicatd_a            213 -  213 
 
      /* VIS  LOCATIONS */
      wearglss_a           214 -  214      visiondf_a           215 -  215 
 
 
      /* HEA  LOCATIONS */
      hearaid_a            216 -  216      hearaidfr_a          217 -  217 
      hearingdf_a          218 -  218      hearqtrm_a           219 -  219 
      hearnyrm_a           220 -  220 
 
      /* MOB  LOCATIONS */
      diff_a               221 -  221      equip_a              222 -  222 
      wlk100_a             223 -  223      wlk13m_a             224 -  224 
      steps_a              225 -  225      canewlkr_a           226 -  226 
      wchair_a             227 -  227      perasst_a            228 -  228 
      noeqwlk100_a         229 -  229      noeqwlk13m_a         230 -  230 
      noeqsteps_a          231 -  231      eqwlk100_a           232 -  232 
      eqwlk13m_a           233 -  233      eqsteps_a            234 -  234 
 
 
      /* COM  LOCATIONS */
      comdiff_a            235 -  235      comusesl_a           236 -  236 
 
 
      /* COG  LOCATIONS */
      cogmemdff_a          237 -  237      cogtypedff_a         238 -  238 
      cogfrqdff_a          239 -  239      cogamtdff_a          240 -  240 
 
 
      /* UPP  LOCATIONS */
      uppslfcr_a           241 -  241      uppraise_a           242 -  242 
      uppobjct_a           243 -  243      disab3_a             244 -  244 
      anydiff_a            245 -  245 
 
      /* SOC  LOCATIONS */
      socerrnds_a          246 -  246      socsclpar_a          247 -  247 
      socwrklim_a          248 -  248 
 
      /* ADO  LOCATIONS */
      devdonset_a          249 -  249 
 
      /* INS  LOCATIONS */
      notcov_a             250 -  250      cover_a              251 -  251 
      cover65_a            252 -  252      sincovde_a           253 -  253 
      sincovvs_a           254 -  254      sincovrx_a           255 -  255 
      medicare_a           256 -  256      mcpart_a             257 -  257 
      mcchoice_a           258 -  258      mchmo_a              259 -  259 
      mcadvr_a             260 -  260      mcdncov_a            261 -  261 
      mcvscov_a            262 -  262      mcpartd_a            263 -  263 
      medicaid_a           264 -  264      maxchng_a            265 -  265 
      maprem_a             266 -  266      madeduc_a            267 -  267 
      mahdhp_a             268 -  268      maflg_a              269 -  269 
      private_a            270 -  270      exchange_a           271 -  271 
      polhld1_a            272 -  272      prplcov1_a           273 -  273 
      prpolh1_a            274 -  274      prplcov1_c_a         275 -  275 
      plnwrkr1_a           276 -  277      plnexchg1_a          278 -  278 
      pln1pay1_a           279 -  279      pln1pay2_a           280 -  280 
      pln1pay3_a           281 -  281      pln1pay4_a           282 -  282 
      pln1pay5_a           283 -  283      pln1pay6_a           284 -  284 
      hicostr1_a           285 -  289      prdeduc1_a           290 -  290 
      prhdhp1_a            291 -  291      hsahra1_a            292 -  292 
      prrxcov1_a           293 -  293      prdncov1_a           294 -  294 
      prvscov1_a           295 -  295      exchpr1_a            296 -  296 
      prflg_a              297 -  297      pxchng1_a            298 -  298 
      prprem1_a            299 -  299      plexchpr1_a          300 -  300 
      polhld2_a            301 -  301      prplcov2_a           302 -  302 
      prpolh2_a            303 -  303      prplcov2_c_a         304 -  304 
      plnwrkr2_a           305 -  306      plnexchg2_a          307 -  307 
      pln2pay1_a           308 -  308      pln2pay2_a           309 -  309 
      pln2pay3_a           310 -  310      pln2pay4_a           311 -  311 
      pln2pay5_a           312 -  312      pln2pay6_a           313 -  313 
      hicostr2_a           314 -  318      prdeduc2_a           319 -  319 
      prhdhp2_a            320 -  320      hsahra2_a            321 -  321 
      prrxcov2_a           322 -  322      prdncov2_a           323 -  323 
      prvscov2_a           324 -  324      exchpr2_a            325 -  325 
      chip_a               326 -  326      chxchng_a            327 -  327 
      chprem_a             328 -  328      chdeduc_a            329 -  329 
      chhdhp_a             330 -  330      chflg_a              331 -  331 
      othpub_a             332 -  332      opxchng_a            333 -  333 
      opprem_a             334 -  334      opdeduc_a            335 -  335 
      ophdhp_a             336 -  336      plexchop_a           337 -  337 
      opflg_a              338 -  338      othgov_a             339 -  339 
      ogxchng_a            340 -  340      ogprem_a             341 -  341 
      ogdeduc_a            342 -  342      oghdhp_a             343 -  343 
      plexchog_a           344 -  344      ogflg_a              345 -  345 
      military_a           346 -  346      milspc1r_a           347 -  347 
      milspc2_a            348 -  348      milspc3_a            349 -  349 
      ihs_a                350 -  350      hilast_a             351 -  351 
      hilastmy_a           352 -  353      histopjob_a          354 -  354 
      histopmiss_a         355 -  355      histopage_a          356 -  356 
      histopcost_a         357 -  357      histopelig_a         358 -  358 
      rsnhicost_a          359 -  359      rsnhiwant_a          360 -  360 
      rsnhielig_a          361 -  361      rsnhiconf_a          362 -  362 
      rsnhimeet_a          363 -  363      rsnhiwait_a          364 -  364 
      rsnhioth_a           365 -  365      rsnhijob_a           366 -  366 
      rsnhimiss_a          367 -  367      hinotyr_a            368 -  368 
      hinotmyr_a           369 -  370      milspc1_a            371 -  371 
      hicov_a              372 -  372      hikind01_a           373 -  373 
      hikind02_a           374 -  374      hikind03_a           375 -  375 
      hikind04_a           376 -  376      hikind05_a           377 -  377 
      hikind06_a           378 -  378      hikind07_a           379 -  379 
      hikind08_a           380 -  380      hikind09_a           381 -  381 
      hikind10_a           382 -  382      mcareprb_a           383 -  383 
      mcaidprb_a           384 -  384 
 
      /* PAY  LOCATIONS */
      paybll12m_a          385 -  385      paynobllnw_a         386 -  386 
      payworry_a           387 -  387 
 
      /* CVL  LOCATIONS */
      evercovd_a           388 -  388      longcovd2_a          389 -  389 
      sympnow1_a           390 -  390      lcvdact_a            391 -  391 
 
 
      /* TSC  LOCATIONS */
      cvdsymsm2_a          392 -  392      cvdparos_a           393 -  393 
      cvdsmelchg_a         394 -  394      cvdsmrec2_a          395 -  395 
      cvdsymtst2_a         396 -  396      cvdtstrec2_a         397 -  397 
 
 
      /* UTZ  LOCATIONS */
      lastdr_a             398 -  398      wellness_a           399 -  399 
      wellvis_a            400 -  400      usualpl_a            401 -  401 
      usplkind_a           402 -  402      retailhc12mtc_a      403 -  403 
      urgcc12mtc_a         404 -  404      emerg12mtc_a         405 -  405 
      hospongt_a           406 -  406      meddl12m_a           407 -  407 
      medng12m_a           408 -  408 
 
      /* TLH  LOCATIONS */
      virapp12m_a          409 -  409 
 
      /* HIT  LOCATIONS */
      accssint_a           410 -  410      accsshom_a           411 -  411 
      hitlook_a            412 -  412      hitcomm_a            413 -  413 
      hittest_a            414 -  414 
 
      /* PMD  LOCATIONS */
      rx12m_a              415 -  415      rxsk12m_a            416 -  416 
      rxls12m_a            417 -  417      rxdl12m_a            418 -  418 
      rxdg12m_a            419 -  419 
 
      /* IMS  LOCATIONS */
      pregfluyr_a          420 -  420      livebirth_a          421 -  421 
      shtflu12m_a          422 -  422      shtflum_a            423 -  424 
      shtfluy_a            425 -  428      flupreg_a            429 -  429 
      flupreg2_a           430 -  430      shtcvd191_a          431 -  431 
      shtcvd19nm2_a        432 -  432      cvdvac1m2_a          433 -  434 
      cvdvac1y2_a          435 -  438      shtpnuev_a           439 -  439 
      shtpneunb_a          440 -  440      shtshingl1_a         441 -  441 
      shingyearp_a         442 -  445      shingwhen1_a         446 -  446 
      shingrix3_a          447 -  447      shingrixn3_a         448 -  448 
      shingrixfs1_a        449 -  449      tdappreg_a           450 -  450 
      shthepa_a            451 -  451      workhealth_a         452 -  452 
      wrkhlthfc_a          453 -  453      travel_a             454 -  454 
 
 
      /* ANX  LOCATIONS */
      anxfreq_a            455 -  455      anxmed_a             456 -  456 
      anxlevel_a           457 -  457 
 
      /* DEP  LOCATIONS */
      depfreq_a            458 -  458      depmed_a             459 -  459 
      deplevel_a           460 -  460 
 
      /* MHC  LOCATIONS */
      mhrx_a               461 -  461      mhthrpy_a            462 -  462 
      mhtpynow_a           463 -  463      mhthdly_a            464 -  464 
      mhthnd_a             465 -  465 
 
      /* SPD  LOCATIONS */
      sad_a                466 -  466      nervous_a            467 -  467 
      restless_a           468 -  468      hopeless_a           469 -  469 
      effort_a             470 -  470      worthless_a          471 -  471 
      k6spd_a              472 -  472 
 
      /* REP  LOCATIONS */
      repstrain_a          473 -  473      replimit_a           474 -  474 
      repsawdoc_a          475 -  475      repwrkdytc_a         476 -  477 
      repfutwrk_a          478 -  478      repstopchg_a         479 -  479 
      repreduce_a          480 -  480      repwrkcaus_a         481 -  481 
 
 
      /* INJ  LOCATIONS */
      anyinjury_a          482 -  482      injlimit_a           483 -  483 
      numinjtc_a           484 -  485      injhome_a            486 -  486 
      injwork_a            487 -  487      injsports_a          488 -  488 
      injfall_a            489 -  489      injfallhom_a         490 -  490 
      injfallwrk_a         491 -  491      injmotor_a           492 -  492 
      injmvtype1_a         493 -  493      injmvtype2_a         494 -  494 
      injmvtype3_a         495 -  495      injmvtype4_a         496 -  496 
      injmvtype5_a         497 -  497      injchores_a          498 -  498 
      injsawdoc_a          499 -  499      injer_a              500 -  500 
      injhosp_a            501 -  501      injbones_a           502 -  502 
      injstitch_a          503 -  503      injwrkdytc_a         504 -  505 
      injfutwrk_a          506 -  506      injstopchg_a         507 -  507 
      injreduce_a          508 -  508 
 
      /* TBI  LOCATIONS */
      tbilcdcmg_a          509 -  509      tbihlsbmc_a          510 -  510 
      tbisport_a           511 -  511      tbileague_a          512 -  512 
      tbieval_a            513 -  513 
 
      /* FGE  LOCATIONS */
      fgefrqtrd_a          514 -  514      fgelngtrd_a          515 -  515 
      fgelevtrd_a          516 -  516 
 
      /* CIG  LOCATIONS */
      smkev_a              517 -  517      smkage_a             518 -  519 
      smknow_a             520 -  520      smkcigst_a           521 -  521 
      cignow_a             522 -  523      smk30d_a             524 -  525 
      cig30d_a             526 -  527      mentholc_a           528 -  528 
      smkqt12m_a           529 -  529      smkqttp_a            530 -  530 
      smkqtnp_a            531 -  533      smkqty_a             534 -  535 
      mentholf_a           536 -  536  str avgnumcig_a          537 -  538 
      avgpackcig_a         539 -  540      smktlk1_a            541 -  541 
      ecigev_a             542 -  542      ecignow_a            543 -  543 
      smkecigst_a          544 -  544 
 
      /* OTB  LOCATIONS */
      cigarev_a            545 -  545      cigarcur_a           546 -  546 
      cigar30d_a           547 -  548      smokelsev1_a         549 -  549 
      smokelscr1_a         550 -  550 
 
      /* LCS  LOCATIONS */
      ctscanev1_a          551 -  551      ctlngwhn1_a          552 -  552 
      ctlngcan1_a          553 -  553 
 
      /* ALC  LOCATIONS */
      drklife_a            554 -  554      drk12mn_a            555 -  557 
      drk12mtp_a           558 -  558      drk12mwk_a           559 -  560 
      drk12myr_a           561 -  563      drkavg12m_a          564 -  565 
      drk12anyr_a          566 -  566      drkstat_a            567 -  568 
      drkbng12m_a          569 -  569      drkany30d_a          570 -  570 
      drkbng30d_a          571 -  572      drkhvy12m_a          573 -  573 
      drkadvise1_a         574 -  574 
 
      /* PHY  LOCATIONS */
      modnr_a              575 -  578      modtpr_a             579 -  579 
      modfreqw_a           580 -  581      modlnr_a             582 -  584 
      modltpr_a            585 -  585      modmin_a             586 -  588 
      vignr_a              589 -  592      vigtpr_a             593 -  593 
      vigfreqw_a           594 -  595      viglnr_a             596 -  598 
      vigltpr_a            599 -  599      vigmin_a             600 -  602 
      pa18_02r_a           603 -  603      strnr_a              604 -  607 
      strtpr_a             608 -  608      strfreqw_a           609 -  610 
      pa18_05r_a           611 -  611 
 
      /* WLK  LOCATIONS */
      wlktran_a            612 -  612      wlktranday_a         613 -  614 
      wlktrantpd_a         615 -  616      wlktrantc_a          617 -  619 
      wlkleis_a            620 -  620      wlkleisday_a         621 -  622 
      wlkleistpd_a         623 -  624      wlkleistc_a          625 -  627 
 
 
      /* ENV  LOCATIONS */
      homewlk_a            628 -  628      roadswlk_a           629 -  629 
      shopswlk_a           630 -  630      transitwlk_a         631 -  631 
      funwlk_a             632 -  632      relaxwlk_a           633 -  633 
      sidewlk_a            634 -  634      trafficwlk_a         635 -  635 
      crimewlk_a           636 -  636      animalwlk_a          637 -  637 
      weatherwlk_a         638 -  638      peoplewlk_a          639 -  639 
 
 
      /* CPA  LOCATIONS */
      advactive_a          640 -  640 
 
      /* SUN  LOCATIONS */
      sunskin1_a           641 -  641      suntan1_a            642 -  642 
      anysburn1_a          643 -  643      numbrn1tc_a          644 -  645 
      sburnwrk_a           646 -  646      sburntan_a           647 -  647 
      sburnphy_a           648 -  648      sburnwat_a           649 -  649 
      sburnscr_a           650 -  650      sburnalc_a           651 -  651 
 
 
      /* SLP  LOCATIONS */
      slphours_a           652 -  653      slprest_a            654 -  654 
      slpfll_a             655 -  655      slpsty_a             656 -  656 
      slpmed1_a            657 -  657      slpmed2_a            658 -  658 
      slpmed3_a            659 -  659      slpmedintro_a        660 -  660 
 
 
      /* SSL  LOCATIONS */
      support_a            661 -  661      lonely_a             662 -  662 
 
 
      /* TSM  LOCATIONS */
      smelldf_a            663 -  663      smellcomp_a          664 -  664 
      smellpht_a           665 -  665      smellpar_a           666 -  666 
      tastedf_a            667 -  667      tastecomp_a          668 -  668 
      tasteflav_a          669 -  669      tasteunw_a           670 -  670 
      tstsmhp2_a           671 -  671      tstsmlast_a          672 -  672 
 
 
      /* ORN  LOCATIONS */
      orient_a             673 -  673 
 
      /* MAR  LOCATIONS */
      marital_a            674 -  674      spousliv_a           675 -  675 
      spousep_a            676 -  676      evrmarried_a         677 -  677 
      marstat_a            678 -  678      legmstat_a           679 -  679 
      spousesex_a          680 -  680      saspprace_a          681 -  681 
      saspphisp_a          682 -  682      spousagetc_a         683 -  684 
      spouseducp_a         685 -  686      spouswrk_a           687 -  687 
      spouswkft_a          688 -  688      prtnrsex_a           689 -  689 
      prtnragetc_a         690 -  691      prtnreducp_a         692 -  693 
      prtnrwrk_a           694 -  694      prtnrwkft_a          695 -  695 
      saparentsc_a         696 -  696      parstat_a            697 -  697 
 
 
      /* VET  LOCATIONS */
      afvet_a              698 -  698      afvettrn_a           699 -  699 
      combat_a             700 -  700      vadisb_a             701 -  701 
      vahosp_a             702 -  702      vacareev_a           703 -  703 
 
 
      /* NAT  LOCATIONS */
      natusborn_a          704 -  704      yrsinus_a            705 -  705 
      citznstp_a           706 -  706 
 
      /* LNG  LOCATIONS */
      langhm_a             707 -  707      langspecr_a          708 -  708 
      langdoc_a            709 -  709      langmed_a            710 -  710 
      langsoc_a            711 -  711 
 
      /* SCH  LOCATIONS */
      schcurenr_a          712 -  712      schdymsstc_a         713 -  714 
 
 
      /* EMP  LOCATIONS */
      emplastwk_a          715 -  715      empnowrk_a           716 -  716 
      empwhynot_a          717 -  718      empwhenwrk_a         719 -  719 
      empwrklsw1_a         720 -  720      emplstwor1_a         721 -  721 
      empwkhrs3_a          722 -  723      empwrkft1_a          724 -  724 
      empsicklv_a          725 -  725      emphealins_a         726 -  726 
      empdysmss3_a         727 -  729 
 
      /* EMD  LOCATIONS */
      emdindstn1_a         730 -  731      emdindstn2_a         732 -  733 
      emdoccupn1_a         734 -  735      emdoccupn2_a         736 -  737 
      emdsuper_a           738 -  738      emdwrkcat1_a         739 -  739 
 
 
      /* VOL  LOCATIONS */
      cevolun1_a           740 -  740      cevolun2_a           741 -  741 
 
 
      /* FEM  LOCATIONS */
      pcntadwkp1_a         742 -  742      pcntadwfp1_a         743 -  743 
 
 
      /* INC  LOCATIONS */
      incwrko_a            744 -  744      incinter_a           745 -  745 
      incssrr_a            746 -  746      incssissdi_a         747 -  747 
      ssissdibth_a         748 -  748      ssissdidsb_a         749 -  749 
      incwelf_a            750 -  750      incretire_a          751 -  751 
      incothr_a            752 -  752      impnum_a             753 -  754 
      povrattc_a           755 -  759      ratcat_a             760 -  761 
  str impincflg_a          762 -  762      inctcflg_a           763 -  763 
 
 
      /* FOO  LOCATIONS */
      fsnap12m_a           764 -  764      fsnap30d_a           765 -  765 
      fwic12m_a            766 -  766      flunch12m1_a         767 -  767 
 
 
      /* FDS  LOCATIONS */
      fdsrunout_a          768 -  768      fdslast_a            769 -  769 
      fdsbalance_a         770 -  770      fdsskip_a            771 -  771 
      fdsskipdys_a         772 -  773      fdsless_a            774 -  774 
      fdshungry_a          775 -  775      fdsweight_a          776 -  776 
      fdsnoteat_a          777 -  777      fdsnedays_a          778 -  779 
      fdscat3_a            780 -  780      fdscat4_a            781 -  781 
 
 
      /* HOU  LOCATIONS */
      houyrsliv_a          782 -  782      houtenure_a          783 -  783 
      hougvasst_a          784 -  784 
 
      /* SDH  LOCATIONS */
      housecost_a          785 -  785 
 
      /* TBH  LOCATIONS */
      transpor_a           786 -  786 
 
      /* CIV  LOCATIONS */
      cemmetng_a           787 -  787      cevotelc_a           788 -  788 
 
 
using "../data/adult24.dat"; 
 
* DEFINE VARIABLE LABELS;
 
* IDN  VARIABLE LABELS;
label variable rectype            "Record type";
label variable srvy_yr            "Year of the National Health Interview Survey";
label variable hhx                "Randomly assigned household number unique to a household";
label variable wtfa_a             "Weight - Final Annual";
 
* UCF  VARIABLE LABELS;
label variable urbrrl23           "2023 NCHS Urban-Rural Classification Scheme for Counties, public";
label variable region             "Household region";
label variable ppsu               "Pseudo-PSU for public-use file variance estimation";
label variable pstrat             "Pseudo-stratum for public-use file variance estimation";
 
* FLG  VARIABLE LABELS;
label variable hhrespsa_flg       "Sample Adult is the household respondent or the proxy who lives in the household";
 
* GEN  VARIABLE LABELS;
label variable proxyflag_a        "Use of proxy for adult interview";
label variable proxyrel2_a        "Proxy's relationship to Sample Adult";
label variable intv_qrt           "Interview quarter";
label variable intv_mon           "Interview month";
label variable hhstat_a           "Indicates person is the Sample Adult";
label variable astatnew           "Recoded ASTAT";
 
* HHC  VARIABLE LABELS;
label variable afnow              "Full-time active duty screener";
label variable pcnt18uptc         "Top-coded count of persons 18 or older in the household";
label variable pcntlt18tc         "Top-coded count of persons under 18 in the household";
label variable sex_a              "Sex of Sample Adult";
label variable age65              "Age 65 or older";
label variable agep_a             "Age of SA (top coded)";
label variable hisp_a             "Recode: Hispanic ethnicity of SA";
label variable hisdetp_a          "Hispanic origin detail";
label variable raceallp_a         "Single and multiple race groups";
label variable hispallp_a         "Single and multiple race groups with Hispanic origin";
label variable educp_a            "Educational level of sample adult";
 
* FAM  VARIABLE LABELS;
label variable pcntadlt_a         "Number of adults in Sample Adult family, top-coded 3+";
label variable pcntkids_a         "Number of children in Sample Adult family, top-coded 3+";
label variable over65flg_a        "Indicator for at least 1 person aged 65+ in SA family";
label variable mltfamflg_a        "Indicator for multifamily households";
label variable maxeducp_a         "Highest level of education of all the adults in the SA's family";
 
* HIS  VARIABLE LABELS;
label variable phstat_a           "General health status";
 
* LSF  VARIABLE LABELS;
label variable lsatis4_a          "Life satisfaction/dissatisfaction";
 
* HYP  VARIABLE LABELS;
label variable hypev_a            "Ever been told you had hypertension";
label variable hypdif_a           "Told had hypertension on two or more visits";
label variable hyp12m_a           "Hypertension, past 12 months";
label variable hypmed_a           "Now taking high blood pressure medication";
 
* CHL  VARIABLE LABELS;
label variable chlev_a            "Ever had high cholesterol";
label variable chl12m_a           "High cholesterol, past 12 months";
label variable chlmed_a           "Now taking cholesterol medication";
 
* CVC  VARIABLE LABELS;
label variable chdev_a            "Ever had coronary heart disease";
label variable angev_a            "Ever had angina";
label variable miev_a             "Ever had a heart attack";
label variable strev_a            "Ever had a stroke";
 
* AST  VARIABLE LABELS;
label variable asev_a             "Ever had asthma";
label variable astill_a           "Still have asthma";
label variable asat12m_a          "Asthma episode";
label variable aser12m_a          "Asthma ER visit";
 
* CAN  VARIABLE LABELS;
label variable canev_a            "Ever had cancer";
label variable bladdcan_a         "Bladder cancer mentioned";
label variable bladdagetc_a       "Age when first told had bladder cancer";
label variable bloodcan_a         "Blood cancer mentioned";
label variable bloodagetc_a       "Age when first told had blood cancer";
label variable bonecan_a          "Bone cancer mentioned";
label variable boneagetc_a        "Age when first told had bone cancer";
label variable braincan_a         "Brain cancer mentioned";
label variable brainagetc_a       "Age when first told had brain cancer";
label variable breascan_a         "Breast cancer mentioned";
label variable breasagetc_a       "Age when first told had breast cancer";
label variable cervican_a         "Cervical cancer mentioned";
label variable cerviagetc_a       "Age when first told had cervical cancer";
label variable coloncan_a         "Colon cancer mentioned";
label variable colonagetc_a       "Age when first told had colon cancer";
label variable esophcan_a         "Esophageal cancer mentioned";
label variable esophagetc_a       "Age when first told had esophageal cancer";
label variable gallbcan_a         "Gallbladder cancer mentioned";
label variable gallbagetc_a       "Age when first told had gallbladder cancer";
label variable laryncan_a         "Larynx-trachea cancer mentioned";
label variable larynagetc_a       "Age when first told had larynx-trachea cancer";
label variable leukecan_a         "Leukemia mentioned";
label variable leukeagetc_a       "Age when first told had leukemia";
label variable livercan_a         "Liver cancer mentioned";
label variable liveragetc_a       "Age when first told had liver cancer";
label variable lungcan_a          "Lung cancer mentioned";
label variable lungagetc_a        "Age when first told had lung cancer";
label variable lymphcan_a         "Lymphoma cancer mentioned";
label variable lymphagetc_a       "Age when first told had lymphoma";
label variable melancan_a         "Melanoma cancer mentioned";
label variable melanagetc_a       "Age when first told had melanoma cancer";
label variable mouthcan_a         "Mouth, tongue or lip cancer mentioned";
label variable mouthagetc_a       "Age when first told had mouth, tongue or lip cancer";
label variable ovarycan_a         "Ovarian cancer mentioned";
label variable ovaryagetc_a       "Age when first told had ovarian cancer";
label variable pancrcan_a         "Pancreatic cancer mentioned";
label variable pancragetc_a       "Age when first told had pancreatic cancer";
label variable prostcan_a         "Prostate cancer mentioned";
label variable prostagetc_a       "Age when first told had prostate cancer";
label variable rectucan_a         "Rectal cancer mentioned";
label variable rectuagetc_a       "Age when first told had rectal cancer";
label variable sknmcan_a          "Skin melanoma cancer mentioned";
label variable sknmagetc_a        "Age when first told had skin melanoma cancer";
label variable sknnmcan_a         "Skin non-melanoma cancer mentioned";
label variable sknnmagetc_a       "Age when first told skin non-melanoma cancer";
label variable skndkcan_a         "Skin cancer (don't know what kind) mentioned";
label variable skndkagetc_a       "Age when first told had skin cancer (don't know what kind)";
label variable stomacan_a         "Stomach cancer mentioned";
label variable stomaagetc_a       "Age when first told had stomach cancer";
label variable throacan_a         "Throat - pharynx cancer mentioned";
label variable throaagetc_a       "Age when first told had throat-pharynx cancer";
label variable thyrocan_a         "Thyroid cancer mentioned";
label variable thyroagetc_a       "Age when first told had thyroid cancer";
label variable uterucan_a         "Uterine cancer mentioned";
label variable uteruagetc_a       "Age when first told had uterine cancer";
label variable hdnckcan_a         "Head and neck cancers mentioned";
label variable hdnckagetc_a       "Age when first told had head or neck cancer";
label variable colrccan_a         "Colorectal cancer mentioned";
label variable colrcagetc_a       "Age when first told had colon or rectal cancer";
label variable othercanp_a        "Other cancer mentioned";
label variable otheragetc_a       "Age when first told had other cancer";
label variable numcan_a           "Number of reported types of cancers";
 
* DIB  VARIABLE LABELS;
label variable predib_a           "Ever had prediabetes";
label variable gesdib_a           "Ever had gestational diabetes";
label variable dibev_a            "Ever had diabetes";
label variable dibagetc_a         "Age first diagnosed w/diabetes";
label variable difyrstc1_a        "Years since first diagnosed w/diabetes";
label variable dibpill_a          "Taking diabetic pills";
label variable dibins_a           "Taking insulin";
label variable dibinstime_a       "Time from diabetes to insulin";
label variable dibinsstop_a       "Ever stop using insulin";
label variable dibinsstyr_a       "Only stop insulin in first year";
label variable dibglp_a           "Taking injectable medications";
label variable dibtype_a          "Diabetes type";
 
* CON  VARIABLE LABELS;
label variable copdev_a           "Ever had COPD";
label variable arthev_a           "Ever had arthritis";
label variable demenev_a          "Ever had dementia";
label variable anxev_a            "Ever had anxiety disorder";
label variable depev_a            "Ever had depression";
 
* RCN  VARIABLE LABELS;
label variable kidweakev_a        "Ever had weak or failing kidneys";
label variable hepev_a            "Ever had hepatitis";
label variable liverev_a          "Ever had cirrhosis or liver condition";
 
* SCE  VARIABLE LABELS;
label variable crohnsev_a         "Ever had Crohn's disease";
label variable ulccolev_a         "Ever had ulcerative colitis";
label variable psorev_a           "Ever had psoriasis";
 
* CFS  VARIABLE LABELS;
label variable cfsev_a            "Ever had Chronic Fatigue Syndrome";
label variable cfsnow_a           "Still have Chronic Fatigue Syndrome";
 
* TSH  VARIABLE LABELS;
label variable coldflu12m_a       "Cold or flu 12 months";
label variable drymth12m_a        "Dry mouth 12 months";
 
* ISN  VARIABLE LABELS;
label variable medrxtrt_a         "Weakened immune system due to prescriptions";
label variable hlthcond_a         "Weakened immune system due to health condition";
 
* ALG  VARIABLE LABELS;
label variable curresp_a          "Current respiratory allergy";
label variable dxresp_a           "Respiratory allergy diagnosis";
label variable curfood_a          "Current food allergy";
label variable dxfood_a           "Food allergy diagnosis";
label variable curskin_a          "Current skin allergy";
label variable dxskin_a           "Skin allergy diagnosis";
 
* BMI  VARIABLE LABELS;
label variable pregnow_a          "Pregnant now";
label variable heighttc_a         "Height without shoes (inches), Public Use";
label variable weightlbtc_a       "Weight without shoes (pounds), Public Use";
label variable bmicat_a           "Categorical Body Mass Index, Public Use";
label variable bmicatd_a          "Categorical Body Mass Index -Detailed, Public Use";
 
* VIS  VARIABLE LABELS;
label variable wearglss_a         "Wear glasses/contact lenses";
label variable visiondf_a         "Difficulty seeing";
 
* HEA  VARIABLE LABELS;
label variable hearaid_a          "Use hearing aid";
label variable hearaidfr_a        "How often use hearing aid";
label variable hearingdf_a        "Difficulty hearing";
label variable hearqtrm_a         "Hearing conversation in quiet room";
label variable hearnyrm_a         "Hearing conversation in noisy room";
 
* MOB  VARIABLE LABELS;
label variable diff_a             "Difficulty walking or climbing steps";
label variable equip_a            "Use equipment to get around";
label variable wlk100_a           "Difficulty walking 100 yards";
label variable wlk13m_a           "Difficulty walking 1/3 mile";
label variable steps_a            "Difficulty walking steps";
label variable canewlkr_a         "Use cane or walker";
label variable wchair_a           "Use wheelchair or scooter";
label variable perasst_a          "Use someone's assistance";
label variable noeqwlk100_a       "Difficulty walking 100 yards without aid";
label variable noeqwlk13m_a       "Difficulty walking 1/3 mile without aid";
label variable noeqsteps_a        "Difficulty walking steps without equipment";
label variable eqwlk100_a         "Difficulty walking 100 yards with aid";
label variable eqwlk13m_a         "Difficulty walking 1/3 mile with aid";
label variable eqsteps_a          "Difficulty walking steps with equipment";
 
* COM  VARIABLE LABELS;
label variable comdiff_a          "Difficulty communicating";
label variable comusesl_a         "Use sign language";
 
* COG  VARIABLE LABELS;
label variable cogmemdff_a        "Difficulty remembering/concentrating";
label variable cogtypedff_a       "Remembering/concentrating or both";
label variable cogfrqdff_a        "Difficulty remembering-how often";
label variable cogamtdff_a        "Difficulty remembering-how much";
 
* UPP  VARIABLE LABELS;
label variable uppslfcr_a         "Difficulty with self care";
label variable uppraise_a         "Difficulty raising soda bottle";
label variable uppobjct_a         "Difficulty using hands and fingers";
label variable disab3_a           "Disability status";
label variable anydiff_a          "Functioning difficulties status";
 
* SOC  VARIABLE LABELS;
label variable socerrnds_a        "Difficulty doing errands alone";
label variable socsclpar_a        "Difficulty participating in social activities";
label variable socwrklim_a        "Work limited due to health problem";
 
* ADO  VARIABLE LABELS;
label variable devdonset_a        "Difficulty doing activities before age 22";
 
* INS  VARIABLE LABELS;
label variable notcov_a           "Coverage status as used in Health United States";
label variable cover_a            "Health insurance hierarchy under 65";
label variable cover65_a          "Health Insurance hierarchy 65+";
label variable sincovde_a         "Single service plan - dental";
label variable sincovvs_a         "Single service plan - vision";
label variable sincovrx_a         "Single service plan - prescription";
label variable medicare_a         "Medicare recode";
label variable mcpart_a           "Type of Medicare coverage";
label variable mcchoice_a         "Enrolled in Medicare Advantage Plan";
label variable mchmo_a            "Medicare HMO";
label variable mcadvr_a           "Medicare Advantage Plan";
label variable mcdncov_a          "Medicare Advantage Plan pays for any dental care costs";
label variable mcvscov_a          "Medicare Advantage Plan pays for any vision care costs";
label variable mcpartd_a          "Medicare Part D";
label variable medicaid_a         "Medicaid recode";
label variable maxchng_a          "Medicaid through Marketplace";
label variable maprem_a           "Medicaid premium";
label variable madeduc_a          "Medicaid deductible";
label variable mahdhp_a           "Medicaid HDHP";
label variable maflg_a            "Medicaid reassignment flag";
label variable private_a          "Private health insurance recode";
label variable exchange_a         "Plan through Health Insurance Exchange, NCHS algorithm";
label variable polhld1_a          "Policyholder for private plan 1";
label variable prplcov1_a         "Plan coverage for others - plan 1";
label variable prpolh1_a          "Relation to policyholder - plan 1";
label variable prplcov1_c_a       "Response to PRPLCOV1_C or PRPLCOV2_C  from child - plan 1";
label variable plnwrkr1_a         "How plan was originally obtained - plan 1";
label variable plnexchg1_a        "Health plan obtained through Marketplace - plan 1";
label variable pln1pay1_a         "Paid for by self or family - plan 1";
label variable pln1pay2_a         "Paid for by employer or union - plan 1";
label variable pln1pay3_a         "Paid for by someone outside the household - plan 1";
label variable pln1pay4_a         "Paid for by Medicare - plan 1";
label variable pln1pay5_a         "Paid for by Medicaid - plan 1";
label variable pln1pay6_a         "Paid for by other government program - plan 1";
label variable hicostr1_a         "Out-of-pocket premium cost - plan 1";
label variable prdeduc1_a         "Deductible - plan 1";
label variable prhdhp1_a          "High deductible health plan - plan 1";
label variable hsahra1_a          "Health Savings Accounts / Health Reimbursement Accounts - plan 1";
label variable prrxcov1_a         "Plan pays for prescription drug - plan 1";
label variable prdncov1_a         "Plan pays for dental care - plan 1";
label variable prvscov1_a         "Plan pays for vision care - plan 1";
label variable exchpr1_a          "Exchange company coding NCHS - plan 1";
label variable prflg_a            "Private reassignment flag";
label variable pxchng1_a          "Marketplace or state exchange, reassigned from public to private";
label variable prprem1_a          "Premium on plan reassigned from public to private";
label variable plexchpr1_a        "Exchange company coding, NCHS, reassigned from public to private";
label variable polhld2_a          "Policyholder for private plan 2";
label variable prplcov2_a         "Plan coverage for others - plan 2";
label variable prpolh2_a          "Relation to policyholder - plan 2";
label variable prplcov2_c_a       "Response to PRPLCOV1_C or PRPLCOV2_C from child - plan 2";
label variable plnwrkr2_a         "How plan was originally obtained - plan 2";
label variable plnexchg2_a        "Health plan obtained through Marketplace - plan 2";
label variable pln2pay1_a         "Paid for by self or family - plan 2";
label variable pln2pay2_a         "Paid for by employer or union - plan 2";
label variable pln2pay3_a         "Paid for by someone outside the household - plan 2";
label variable pln2pay4_a         "Paid for by Medicare - plan 2";
label variable pln2pay5_a         "Paid for by Medicaid - plan 2";
label variable pln2pay6_a         "Paid for by other government program - plan 2";
label variable hicostr2_a         "Out-of-pocket premium cost - plan 2";
label variable prdeduc2_a         "Deductible - plan 2";
label variable prhdhp2_a          "High deductible health plan - plan 2";
label variable hsahra2_a          "Health Savings Accounts / Health Reimbursement Accounts - plan 2";
label variable prrxcov2_a         "Plan pays for prescription drug - plan 2";
label variable prdncov2_a         "Plan pays for dental care - plan 2";
label variable prvscov2_a         "Plan pays for vision care - plan 2";
label variable exchpr2_a          "Exchange company coding NCHS - plan 2";
label variable chip_a             "Children's Health Insurance Program (CHIP) recode";
label variable chxchng_a          "CHIP through Marketplace";
label variable chprem_a           "Pay CHIP premium";
label variable chdeduc_a          "CHIP deductible";
label variable chhdhp_a           "CHIP HDHP";
label variable chflg_a            "CHIP reassignment flag";
label variable othpub_a           "State-sponsored health plan recode";
label variable opxchng_a          "State-sponsored plan through Marketplace";
label variable opprem_a           "Pay premium for state-sponsored plan";
label variable opdeduc_a          "State-sponsored plan deductible";
label variable ophdhp_a           "State-sponsored plan HDHP";
label variable plexchop_a         "Exchange company coding, NCHS (state-sponsored plan)";
label variable opflg_a            "State-sponsored reassignment flag";
label variable othgov_a           "Other government program recode";
label variable ogxchng_a          "Other government program through Marketplace";
label variable ogprem_a           "Pay premium for other government program";
label variable ogdeduc_a          "Other government program deductible";
label variable oghdhp_a           "Other government program HDHP";
label variable plexchog_a         "Exchange company coding, NCHS (other government program)";
label variable ogflg_a            "Other government reassignment flag";
label variable military_a         "Military health care coverage recode";
label variable milspc1r_a         "Types of military health care - VA health care";
label variable milspc2_a          "Types of military health care - TRICARE";
label variable milspc3_a          "Types of military health care - CHAMP-VA";
label variable ihs_a              "Indian Health Service recode";
label variable hilast_a           "How long since last health coverage";
label variable hilastmy_a         "Number of months without coverage";
label variable histopjob_a        "Lost job or changed employers";
label variable histopmiss_a       "Missed deadline";
label variable histopage_a        "Ineligible because of age/left school";
label variable histopcost_a       "Cost increase";
label variable histopelig_a       "Not eligible for Medicaid, CHIP, or other public coverage";
label variable rsnhicost_a        "Not affordable";
label variable rsnhiwant_a        "Do not need or want coverage";
label variable rsnhielig_a        "Not eligible for coverage";
label variable rsnhiconf_a        "Signing up too difficult or confusing";
label variable rsnhimeet_a        "Cannot find a plan that meets the needs";
label variable rsnhiwait_a        "Coverage has not started yet";
label variable rsnhioth_a         "Another reason";
label variable rsnhijob_a         "Lost job";
label variable rsnhimiss_a        "Missed deadline";
label variable hinotyr_a          "No health coverage during the past 12 months";
label variable hinotmyr_a         "Months without coverage in the past 12 months";
label variable milspc1_a          "Types of military health care - VA health care original response";
label variable hicov_a            "Have health insurance";
label variable hikind01_a         "Kind(s) of health insurance - private health insurance";
label variable hikind02_a         "Kind(s) of health insurance - Medicare";
label variable hikind03_a         "Kind(s) of health insurance - Medicare supplement (Medigap)";
label variable hikind04_a         "Kind(s) of health insurance - Medicaid";
label variable hikind05_a         "Kind(s) of health insurance - CHIP";
label variable hikind06_a         "Kind(s) of health insurance - military related health care";
label variable hikind07_a         "Kind(s) of health insurance - Indian Health Service";
label variable hikind08_a         "Kind(s) of health insurance - State-sponsored health plan";
label variable hikind09_a         "Kind(s) of health insurance - Other government program";
label variable hikind10_a         "Kind(s) of health insurance - No coverage of any type";
label variable mcareprb_a         "Medicare coverage probe";
label variable mcaidprb_a         "Medicaid coverage probe";
 
* PAY  VARIABLE LABELS;
label variable paybll12m_a        "Problems paying medical bills, past 12 months";
label variable paynobllnw_a       "Unable to pay medical bills";
label variable payworry_a         "Get sick or have accident, worry about paying medical bills";
 
* CVL  VARIABLE LABELS;
label variable evercovd_a         "Ever had COVID-19";
label variable longcovd2_a        "Had COVID-19 symptoms for 3 or more months";
label variable sympnow1_a         "Currently has COVID-19 symptoms";
label variable lcvdact_a          "COVID-19 impacts activities";
 
* TSC  VARIABLE LABELS;
label variable cvdsymsm2_a        "COVID-19 symptom- loss of smell";
label variable cvdparos_a         "COVID-19 symptom- odors different";
label variable cvdsmelchg_a       "COVID-19 symptom- any smell change";
label variable cvdsmrec2_a        "COVID-19 symptom- smell recovery";
label variable cvdsymtst2_a       "COVID-19 symptom- loss of taste";
label variable cvdtstrec2_a       "COVID-19 symptom- taste recovery";
 
* UTZ  VARIABLE LABELS;
label variable lastdr_a           "Time since last saw doctor";
label variable wellness_a         "Was last visit a wellness visit";
label variable wellvis_a          "Time since last wellness visit";
label variable usualpl_a          "Have a usual place for care";
label variable usplkind_a         "Type of place for usual care";
label variable retailhc12mtc_a    "Number of times visited retail health clinics, past 12 months, top-coded";
label variable urgcc12mtc_a       "Number of times visited urgent care, past 12 months, top-coded";
label variable emerg12mtc_a       "Number of times visited hospital emergency room, past 12 months, top-coded";
label variable hospongt_a         "Hospitalized overnight, past 12 months";
label variable meddl12m_a         "Delayed medical care due to cost, past 12 months";
label variable medng12m_a         "Needed medical care but did not get it due to cost, past 12 months";
 
* TLH  VARIABLE LABELS;
label variable virapp12m_a        "Virtual medical appointment, past 12 months";
 
* HIT  VARIABLE LABELS;
label variable accssint_a         "Internet access";
label variable accsshom_a         "Internet access at home";
label variable hitlook_a          "Used internet for health information";
label variable hitcomm_a          "Communicated with doctor's office";
label variable hittest_a          "Used internet for test results";
 
* PMD  VARIABLE LABELS;
label variable rx12m_a            "Took prescription medication, past 12 months";
label variable rxsk12m_a          "Skipped medication doses to save money, past 12 months";
label variable rxls12m_a          "Took less medication to save money, past 12 months";
label variable rxdl12m_a          "Delayed filling prescription to save money, past 12 months";
label variable rxdg12m_a          "Needed prescription medication but did not get it due to cost, past 12 months";
 
* IMS  VARIABLE LABELS;
label variable pregfluyr_a        "Was sample adult pregnant last flu season";
label variable livebirth_a        "Any live births";
label variable shtflu12m_a        "Flu vaccine, past 12 months";
label variable shtflum_a          "Month of last flu vaccine";
label variable shtfluy_a          "Year of last flu vaccine";
label variable flupreg_a          "Was flu shot before or during pregnancy";
label variable flupreg2_a         "Earlier pregnancy and flu vaccine";
label variable shtcvd191_a        "COVID-19 vaccination";
label variable shtcvd19nm2_a      "Number of COVID-19 vaccinations";
label variable cvdvac1m2_a        "Month of most recent COVID-19 vaccine";
label variable cvdvac1y2_a        "Year of most recent COVID-19 vaccine";
label variable shtpnuev_a         "Ever had pneumonia shot";
label variable shtpneunb_a        "Number of pneumonia shots";
label variable shtshingl1_a       "Ever had a shingles vaccination";
label variable shingyearp_a       "Year of most recent Shingles vaccine";
label variable shingwhen1_a       "Was last shingles shot before 2017";
label variable shingrix3_a        "Ever had Shingrix vaccination";
label variable shingrixn3_a       "How many Shingrix shots";
label variable shingrixfs1_a      "First or second Shingrix shot";
label variable tdappreg_a         "Have a Tdap booster shot";
label variable shthepa_a          "Ever receive hepatitis A vaccine";
label variable workhealth_a       "Currently provide medical care to patients";
label variable wrkhlthfc_a        "Currently volunteer or work in health care";
label variable travel_a           "Travel to other countries since 1995";
 
* ANX  VARIABLE LABELS;
label variable anxfreq_a          "How often feel worried, nervous, or anxious";
label variable anxmed_a           "Take medication for worried, nervous, or anxious feelings";
label variable anxlevel_a         "Level of feelings when last felt worried, nervous, or anxious";
 
* DEP  VARIABLE LABELS;
label variable depfreq_a          "How often depressed";
label variable depmed_a           "Take medication for depression";
label variable deplevel_a         "Level of how depressed";
 
* MHC  VARIABLE LABELS;
label variable mhrx_a             "Took medication for other emotions, concentration, behavior, or mental health, p";
label variable mhthrpy_a          "Received counseling or therapy from mental health professional, past 12 months";
label variable mhtpynow_a         "Currently receiving counseling or therapy from mental health professional, past";
label variable mhthdly_a          "Delayed counseling or therapy due to cost, past 12 months";
label variable mhthnd_a           "Needed counseling or therapy but did not get it due to cost, past 12 months";
 
* SPD  VARIABLE LABELS;
label variable sad_a              "How often felt so sad nothing cheers you up, past 30 days";
label variable nervous_a          "How often felt nervous, past 30 days";
label variable restless_a         "How often felt restless/fidgety, past 30 days";
label variable hopeless_a         "How often felt hopeless, past 30 days";
label variable effort_a           "How often felt everything was an effort, past 30 days";
label variable worthless_a        "How often felt worthless, past 30 days";
label variable k6spd_a            "Experienced serious psychological distress - K6 scale";
 
* REP  VARIABLE LABELS;
label variable repstrain_a        "Repetitive strain injuries in the past 3 months";
label variable replimit_a         "Limited by repetitive strain injury in the past 3 months";
label variable repsawdoc_a        "Saw a doctor about repetitive strain injury";
label variable repwrkdytc_a       "Number of days missed due to repetitive strain injury";
label variable repfutwrk_a        "Expected workdays missed due to repetitive strain injury";
label variable repstopchg_a       "Stopped working or changed job due to repetitive strain injury";
label variable repreduce_a        "Reduced work or changed tasks due to repetitive strain injury";
label variable repwrkcaus_a       "Did repetitive strain injury occur while working";
 
* INJ  VARIABLE LABELS;
label variable anyinjury_a        "Any injury in the past 3 months (not including repetitive strain injuries)";
label variable injlimit_a         "Limited by injury in the past 3 months";
label variable numinjtc_a         "Number of injuries in the past 3 months";
label variable injhome_a          "Did injury occur at home";
label variable injwork_a          "Did injury occur at work";
label variable injsports_a        "Did injury occur while playing sports or exercising";
label variable injfall_a          "Did injury occur because of a fall";
label variable injfallhom_a       "Did fall occur at home";
label variable injfallwrk_a       "Did fall occur at work";
label variable injmotor_a         "Injury caused by a motor vehicle crash or collision";
label variable injmvtype1_a       "Motor vehicle accident - driver";
label variable injmvtype2_a       "Motor vehicle accident - passenger";
label variable injmvtype3_a       "Motor vehicle accident - bicyclist";
label variable injmvtype4_a       "Motor vehicle accident - pedestrian";
label variable injmvtype5_a       "Motor vehicle accident - something else";
label variable injchores_a        "Did injury occur while doing household activities";
label variable injsawdoc_a        "Saw a doctor about injury";
label variable injer_a            "Visited ER for injury";
label variable injhosp_a          "Hospitalized for injury";
label variable injbones_a         "Did injury cause broken bones";
label variable injstitch_a        "Did injury require stitches or staples";
label variable injwrkdytc_a       "Number of workdays missed due to injury in the past 3 months";
label variable injfutwrk_a        "Expected workdays missed due to injury";
label variable injstopchg_a       "Stopped working or changed jobs due to injury";
label variable injreduce_a        "Reduced work or changed tasks due to injury";
 
* TBI  VARIABLE LABELS;
label variable tbilcdcmg_a        "Lost consciousness, dazed or confused, or had gap in memory, past 12 months";
label variable tbihlsbmc_a        "Headache, sensitivities, balance problems or mood change, past 12 months";
label variable tbisport_a         "Blow or jolt to head while playing sports or rec activity, past 12 months";
label variable tbileague_a        "Blow or jolt to head while playing organized sports, past 12 months";
label variable tbieval_a          "Evaluated for concussion, past 12 months";
 
* FGE  VARIABLE LABELS;
label variable fgefrqtrd_a        "How often tired, past 3m";
label variable fgelngtrd_a        "How long tiredness lasted";
label variable fgelevtrd_a        "Level of tiredness";
 
* CIG  VARIABLE LABELS;
label variable smkev_a            "Ever smoked 100 cigarettes";
label variable smkage_a           "Age started smoking regularly";
label variable smknow_a           "Now smoke cigarettes";
label variable smkcigst_a         "Cigarette smoking status";
label variable cignow_a           "Number of cigarettes a day";
label variable smk30d_a           "Number of days smoked past month";
label variable cig30d_a           "Number of cigarettes on days smoked past month";
label variable mentholc_a         "Smoke menthol or non-menthol cigarettes";
label variable smkqt12m_a         "Stopped smoking for 1+ day, past 12 months";
label variable smkqttp_a          "Time since quitting smoking-time period";
label variable smkqtnp_a          "Time since quitting smoking-number";
label variable smkqty_a           "Years since quit smoking";
label variable mentholf_a         "Smoked menthol or non-menthol cigarettes";
label variable avgnumcig_a        "Average number of cigarettes";
label variable avgpackcig_a       "Average number of cigarette packs per day";
label variable smktlk1_a          "Advised by doctor about quitting, past 12m";
label variable ecigev_a           "Ever used electronic cigarettes";
label variable ecignow_a          "Now use electronic cigarettes";
label variable smkecigst_a        "Electronic cigarette use status";
 
* OTB  VARIABLE LABELS;
label variable cigarev_a          "Ever smoked a cigar";
label variable cigarcur_a         "Now smoke cigars";
label variable cigar30d_a         "How many days smoked a cigar, past 30 days";
label variable smokelsev1_a       "Ever used smokeless tobacco";
label variable smokelscr1_a       "Now use smokeless tobacco";
 
* LCS  VARIABLE LABELS;
label variable ctscanev1_a        "Ever have CT scan of chest area";
label variable ctlngwhn1_a        "When last CT scan of chest area";
label variable ctlngcan1_a        "Have CT scan of chest area to check or screen for lung cancer";
 
* ALC  VARIABLE LABELS;
label variable drklife_a          "Had at least one alcohol drink in lifetime";
label variable drk12mn_a          "Days drank alcohol past 12 months - number";
label variable drk12mtp_a         "Days drank alcohol past 12 months - time period";
label variable drk12mwk_a         "Days drank alcohol per week, past 12 months";
label variable drk12myr_a         "Days drank alcohol per year, past 12 months";
label variable drkavg12m_a        "Average number of alcohol drinks on days drank";
label variable drk12anyr_a        "Ever had 12+ alcohol drinks in any one year";
label variable drkstat_a          "Alcohol drinking status";
label variable drkbng12m_a        "Ever had 4+/5+ alcohol drinks in a day, past 12 months";
label variable drkany30d_a        "Had any alcohol drink, past 30 days";
label variable drkbng30d_a        "Number of times had 4+/5+ alcohol drinks on an occasion, past 30d";
label variable drkhvy12m_a        "Heavy alcohol drinking in the past 12 months";
label variable drkadvise1_a       "Advised by doctor to cut drinking, past 12 months";
 
* PHY  VARIABLE LABELS;
label variable modnr_a            "Moderate physical activity-number";
label variable modtpr_a           "Moderate physical activity-time period";
label variable modfreqw_a         "Frequency of moderate physical activity (times per week)";
label variable modlnr_a           "Length of moderate physical activity-number";
label variable modltpr_a          "Length of moderate physical activity-time period";
label variable modmin_a           "Duration of moderate physical activity (in minutes)";
label variable vignr_a            "Vigorous physical activity-number";
label variable vigtpr_a           "Vigorous physical activity-time period";
label variable vigfreqw_a         "Frequency of vigorous physical activity (times per week)";
label variable viglnr_a           "Length of vigorous physical activity-number";
label variable vigltpr_a          "Length of vigorous physical activity-time period";
label variable vigmin_a           "Duration of vigorous physical activity (in minutes)";
label variable pa18_02r_a         "Physical activity met guidelines for aerobic activity";
label variable strnr_a            "Strengthening physical activity-number";
label variable strtpr_a           "Strengthening physical activity-time period";
label variable strfreqw_a         "Frequency of strengthening physical activity (times per week)";
label variable pa18_05r_a         "Physical activity met guidelines for aerobic and/or strengthening activity";
 
* WLK  VARIABLE LABELS;
label variable wlktran_a          "Walk for transportation, past 7 days";
label variable wlktranday_a       "How many days for transportation walk, past 7 days";
label variable wlktrantpd_a       "How many times per day for transportation walk, past 7 days";
label variable wlktrantc_a        "Length of walk for transportation, top coded at 181 minutes";
label variable wlkleis_a          "Walk for leisure, past 7 days";
label variable wlkleisday_a       "How many days for leisure walk, past 7 days";
label variable wlkleistpd_a       "How many times per day for leisure walk, past 7 days";
label variable wlkleistc_a        "Length of walk for leisure, top-coded at 181 minutes";
 
* ENV  VARIABLE LABELS;
label variable homewlk_a          "Freq walks near own home";
label variable roadswlk_a         "Roads to walk where you live";
label variable shopswlk_a         "Shops to walk to where live";
label variable transitwlk_a       "Transit where you live";
label variable funwlk_a           "Fun place to walk where you live";
label variable relaxwlk_a         "Places to relax you can walk to where you live";
label variable sidewlk_a          "Sidewalks where you live";
label variable trafficwlk_a       "Traffic makes it unsafe to walk";
label variable crimewlk_a         "Crime makes it unsafe to walk";
label variable animalwlk_a        "Animals make it unsafe to walk";
label variable weatherwlk_a       "How often does weather make it less likely to walk";
label variable peoplewlk_a        "How often are people walking in front of home";
 
* CPA  VARIABLE LABELS;
label variable advactive_a        "Doctor advised increase activity";
 
* SUN  VARIABLE LABELS;
label variable sunskin1_a         "Skin after one hour exposure in the sun";
label variable suntan1_a          "How often try to tan in the past 12 months";
label variable anysburn1_a        "Any sunburns in the past 12 months";
label variable numbrn1tc_a        "Number of times sunburned in the past 12 months, topcode";
label variable sburnwrk_a         "Working when sunburned";
label variable sburntan_a         "Trying to tan when sunburned";
label variable sburnphy_a         "Exercising when sunburned";
label variable sburnwat_a         "Around water when sunburned";
label variable sburnscr_a         "Using sunscreen when sunburned";
label variable sburnalc_a         "Drinking alcohol when sunburned";
 
* SLP  VARIABLE LABELS;
label variable slphours_a         "Hours of sleep in a 24-hour period";
label variable slprest_a          "Wake up well rested, past 30 days";
label variable slpfll_a           "Trouble falling asleep, past 30 days";
label variable slpsty_a           "Trouble staying asleep, past 30 days";
label variable slpmed1_a          "Take prescribed medication for sleep, past 30 days";
label variable slpmed2_a          "Take OTC medication for sleep, past 30 days";
label variable slpmed3_a          "Take MJ/CBD for sleep, past 30 days";
label variable slpmedintro_a      "Introduction to SLP medication questions";
 
* SSL  VARIABLE LABELS;
label variable support_a          "How often social or emotional support";
label variable lonely_a           "How often lonely";
 
* TSM  VARIABLE LABELS;
label variable smelldf_a          "Difficulty smelling";
label variable smellcomp_a        "Smelling compared to past";
label variable smellpht_a         "Smell unpleasant odor";
label variable smellpar_a         "Smells different";
label variable tastedf_a          "Difficulty tasting";
label variable tastecomp_a        "Tasting compared to past";
label variable tasteflav_a        "Tasting flavors";
label variable tasteunw_a         "Unwanted taste";
label variable tstsmhp2_a         "Ever discuss problem with smell or taste with doctor";
label variable tstsmlast_a        "Last time discussed problem with smell or taste with doctor";
 
* ORN  VARIABLE LABELS;
label variable orient_a           "Sexual orientation";
 
* MAR  VARIABLE LABELS;
label variable marital_a          "Sample adult's current marital status";
label variable spousliv_a         "Sample adult's spouse lives here";
label variable spousep_a          "Sample adult's spouse does not reside here due to legal separation";
label variable evrmarried_a       "Sample adult has ever been married";
label variable marstat_a          "Current marital status of sample adult";
label variable legmstat_a         "Legal marital status of sample adult";
label variable spousesex_a        "Sex of sample adult's spouse";
label variable saspprace_a        "Race of sample adult and spouse or partner are the same";
label variable saspphisp_a        "Hispanic ethnicity of sample adult and spouse or partner are the same";
label variable spousagetc_a       "Age of sample adult's spouse, top-coded";
label variable spouseducp_a       "Education level of sample adult's spouse";
label variable spouswrk_a         "Working status of sample adult's spouse";
label variable spouswkft_a        "Sample adult's spouse is working full-time";
label variable prtnrsex_a         "Sex of the sample adult's partner";
label variable prtnragetc_a       "Age of sample adult's partner, top-coded";
label variable prtnreducp_a       "Education level of sample adult's partner";
label variable prtnrwrk_a         "Working status of sample adult's partner";
label variable prtnrwkft_a        "Sample adult's partner is working full-time";
label variable saparentsc_a       "Sample adult relationship to sample child";
label variable parstat_a          "Parental Status of sample adult";
 
* VET  VARIABLE LABELS;
label variable afvet_a            "Ever serve active duty military";
label variable afvettrn_a         "Reserves or National Guard";
label variable combat_a           "Ever served abroad during armed conflict";
label variable vadisb_a           "Have VA disability rating";
label variable vahosp_a           "Receive care at VA facility";
label variable vacareev_a         "Ever use VA health care";
 
* NAT  VARIABLE LABELS;
label variable natusborn_a        "Born in U.S. or U.S. territory";
label variable yrsinus_a          "Years that sample adult has been in the United States";
label variable citznstp_a         "Citizenship status";
 
* LNG  VARIABLE LABELS;
label variable langhm_a           "Language spoken at home";
label variable langspecr_a        "Language at home, public use";
label variable langdoc_a          "Language at doctor";
label variable langmed_a          "Language for TV, news, radio";
label variable langsoc_a          "Language socially";
 
* SCH  VARIABLE LABELS;
label variable schcurenr_a        "Currently in school";
label variable schdymsstc_a       "Days of school missed due to illness or injury past 12 months, top-coded";
 
* EMP  VARIABLE LABELS;
label variable emplastwk_a        "Worked for pay last week";
label variable empnowrk_a         "Temporarily absent from work last week";
label variable empwhynot_a        "Main reason not working";
label variable empwhenwrk_a       "Last time worked";
label variable empwrklsw1_a       "Worked last week";
label variable emplstwor1_a       "Last time worked for pay";
label variable empwkhrs3_a        "Hours worked per week (topcoded for Public Use)";
label variable empwrkft1_a        "Usually work 35+ hours per week";
label variable empsicklv_a        "Paid sick leave";
label variable emphealins_a       "Health insurance offered";
label variable empdysmss3_a       "Days missed work, past 12 months (top-coded)";
 
* EMD  VARIABLE LABELS;
label variable emdindstn1_a       "Detailed 2-digit recode for sample adult's industry";
label variable emdindstn2_a       "Simple 2-digit recode for sample adult's industry";
label variable emdoccupn1_a       "Detailed 2-digit recode for sample adult's occupation";
label variable emdoccupn2_a       "Simple 2-digit recode for sample adult's occupation";
label variable emdsuper_a         "Supervise other employees";
label variable emdwrkcat1_a       "Type of main job";
 
* VOL  VARIABLE LABELS;
label variable cevolun1_a         "Volunteer for organization or association in the past 12 months";
label variable cevolun2_a         "Other volunteer activities in the past 12 months";
 
* FEM  VARIABLE LABELS;
label variable pcntadwkp1_a       "Number of adults in sample adult's family who are working (top-coded)";
label variable pcntadwfp1_a       "Number of adults in sample adult's family who are working full-time (top-coded)";
 
* INC  VARIABLE LABELS;
label variable incwrko_a          "Income from wages";
label variable incinter_a         "Income from accounts";
label variable incssrr_a          "Income from SS/Railroad Retirement";
label variable incssissdi_a       "Family income from SSDI";
label variable ssissdibth_a       "Which family income SSI/SSDI";
label variable ssissdidsb_a       "SSI/SSDI due to disability";
label variable incwelf_a          "Income from public assistance";
label variable incretire_a        "Income from retirement";
label variable incothr_a          "Income from other sources";
label variable impnum_a           "Imputation num";
label variable povrattc_a         "SA family poverty ratio (top-coded)";
label variable ratcat_a           "Ratio of family income to poverty threshold for SA's family";
label variable impincflg_a        "Imputed SA family income imputation flag";
label variable inctcflg_a         "Sample adult family income top-code flag";
 
* FOO  VARIABLE LABELS;
label variable fsnap12m_a         "Receive food stamps, past 12m";
label variable fsnap30d_a         "Receive food stamps, past 30d";
label variable fwic12m_a          "Receive WIC benefits, past 12m";
label variable flunch12m1_a       "Receive free/reduced meals at school";
 
* FDS  VARIABLE LABELS;
label variable fdsrunout_a        "Worry food would run out";
label variable fdslast_a          "Food didn't last";
label variable fdsbalance_a       "Couldn't afford to eat balanced meals";
label variable fdsskip_a          "Cut the size of meals or skip meals";
label variable fdsskipdys_a       "How many days did you/adults in the family cut the size of meals or skip meals";
label variable fdsless_a          "Eat less than should";
label variable fdshungry_a        "Ever hungry because not enough money for food";
label variable fdsweight_a        "Lose weight because not enough money for food";
label variable fdsnoteat_a        "Not eat for a whole day";
label variable fdsnedays_a        "How many days not eat";
label variable fdscat3_a          "Adult 3 category food security recode";
label variable fdscat4_a          "Adult  4 category food security recode";
 
* HOU  VARIABLE LABELS;
label variable houyrsliv_a        "Length of time in house/apartment";
label variable houtenure_a        "Residence owned or rented";
label variable hougvasst_a        "Paying lower rent";
 
* SDH  VARIABLE LABELS;
label variable housecost_a        "Had trouble paying for housing";
 
* TBH  VARIABLE LABELS;
label variable transpor_a         "Delay care in the past 12 months because no reliable transportation";
 
* CIV  VARIABLE LABELS;
label variable cemmetng_a         "Attend public meeting in the past 12 months";
label variable cevotelc_a         "Vote in last local elections";
 
* DEFINE VALUE LABELS FOR REPORTS;
 
label define SA001X
  1    "Inactive"
  2    "Insufficiently active"
  3    "Sufficiently active"
  8    "Not Ascertained"
;
 
label define SA002X
  1    "Underweight"
  2    "Healthy weight"
  3    "Overweight"
  4    "Obese"
  9    "Unknown"
;
 
label define SA003X
  1    "Underweight"
  2    "Healthy weight"
  3    "Overweight"
  4    "Class 1 Obesity"
  5    "Class 2 Obesity"
  6    "Class 3 (Severe) Obesity"
  9    "Unknown"
;
 
label define SA004X
  1    "Reassigned to CHIP from private"
;
 
label define SA005X
  1    "Yes, a citizen of the United States"
  2    "No, not a citizen of the United States"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA006X
  1    "Private"
  2    "Medicaid and other public"
  3    "Other coverage"
  4    "Uninsured"
  5    "Don't Know"
;
 
label define SA007X
  1    "Private"
  2    "Dual eligible"
  3    "Medicare Advantage"
  4    "Medicare only excluding Medicare Advantage"
  5    "Other coverage"
  6    "Uninsured"
  7    "Don't Know"
;
 
label define SA008X
  1    "Meets neither criteria"
  2    "Meets strength only"
  3    "Meets aerobic only"
  4    "Meets both criteria"
  8    "Not Ascertained"
;
 
label define SA009X
  9995 "Extreme value"
  9996 "Unable to do this type of activity"
  9997 "Refused"
  9998 "Not Ascertained"
  9999 "Don't Know"
;
 
label define SA010X
  997  "Refused"
  998  "Not Ascertained"
  999  "Don't Know"
;
 
label define SA011X
  996  "Extreme value"
  997  "Refused"
  998  "Not Ascertained"
  999  "Don't Know"
;
 
label define SA012X
  996  "Extreme value"
  997  "Refused"
  998  "Not Ascertained"
  999  "Don't Know"
;
 
label define SA013X
  1    "Day(s)"
  2    "Week(s)"
  3    "Month(s)"
  4    "Year(s)"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA014X
  0    "Never"
  1    "Per week"
  2    "Per month"
  3    "Per year"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA015X
  01   "Lifetime abstainer"
  02   "Former infrequent"
  03   "Former regular"
  04   "Former, unknown frequency"
  05   "Current infrequent"
  06   "Current light"
  07   "Current moderate"
  08   "Current heavier"
  09   "Current drinker, frequency/level unknown"
  10   "Drinking status unknown"
;
 
label define SA016X
  1    "Current e-cigarette user"
  2    "Used e-cigarette, not current user"
  3    "Never e-cigarette user"
  4    "E-cigarette user, current status unknown"
  9    "Unknown if ever used e-cigarette"
;
 
label define SA017X
  01   "Grade 0-11"
  02   "12th grade, no diploma"
  03   "GED or equivalent"
  04   "High School Graduate"
  05   "Some college, no degree"
  06   "Associate degree: occupational, technical, or vocational program"
  07   "Associate degree: academic program"
  08   "Bachelor's degree (Example: BA, AB, BS, BBA)"
  09   "Master's degree (Example: MA, MS, MEng, MEd, MBA)"
  10   "Professional School or Doctoral degree (Example: MD, DDS, DVM, JD, PhD, EdD)"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA018X
  0    "0 times"
  1    "1 time"
  2    "2 times"
  3    "3 times"
  4    "4+ times"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA019X
  1    "Exchange plan"
  2    "Not exchange plan"
  8    "Not Ascertained"
;
 
label define SA020X
  1    "Company provides exchange plans"
  2    "Not an exchange company"
  3    "Exchange Portal or exact exchange plan name"
  8    "Not Ascertained"
;
 
label define SA021X
  1    "Food secure"
  2    "Low food security"
  3    "Very low food security"
  8    "Not Ascertained"
;
 
label define SA022X
  1    "High food security"
  2    "Marginal food security"
  3    "Low food security"
  4    "Very low food security"
  8    "Not Ascertained"
;
 
label define SA023X
  1    "Person is sample adult"
;
 
label define SA024X
  1    "Hispanic (Mexican/Mexican American)"
  2    "Hispanic (all other groups)"
  3    "Not Hispanic"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA025X
  01   "Hispanic"
  02   "Non-Hispanic White only"
  03   "Non-Hispanic Black/African American only"
  04   "Non-Hispanic Asian only"
  05   "Non-Hispanic AIAN only"
  06   "Non-Hispanic AIAN and any other group"
  07   "Other single and multiple races"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA026X
  01   "Crop production"
  02   "Animal production and aquaculture"
  03   "Forestry and logging"
  04   "Fishing, hunting, and trapping"
  05   "Support activities for agriculture and forestry"
  06   "Oil and gas extraction"
  07   "Mining (except oil and gas)"
  08   "Support activities for mining"
  09   "Utilities industries"
  10   "Construction industries"
  11   "Food manufacturing"
  12   "Beverage and tobacco product manufacturing"
  13   "Textile mills"
  14   "Textile product mills"
  15   "Apparel manufacturing"
  16   "Leather and allied product manufacturing"
  17   "Wood product manufacturing"
  18   "Paper manufacturing"
  19   "Printing and related support activities"
  20   "Petroleum and coal products manufacturing"
  21   "Chemical manufacturing"
  22   "Plastics and rubber products manufacturing"
  23   "Nonmetallic mineral product manufacturing"
  24   "Primary metal manufacturing"
  25   "Fabricated metal product manufacturing"
  26   "Machinery manufacturing"
  27   "Computer and electronic product manufacturing"
  28   "Electrical equipment, appliance, and component manufacturing"
  29   "Transportation equipment manufacturing"
  30   "Furniture and related product manufacturing"
  31   "Miscellaneous manufacturing"
  32   "Merchant wholesalers, durable goods"
  33   "Merchant wholesalers, nondurable goods"
  34   "Non-specified wholesale trade"
  35   "Motor vehicle and parts dealers"
  36   "Furniture and home furnishings stores"
  37   "Electronics and appliance stores"
  38   "Building material and garden equipment and supplies dealers"
  39   "Food and beverage stores"
  40   "Health and personal care stores"
  41   "Gasoline stations"
  42   "Clothing, shoe, jewelry, luggage, and leather goods stores"
  43   "Sporting goods, camera, hobby, book and music stores"
  44   "General merchandise stores"
  45   "Miscellaneous store retailers"
  46   "Nonstore retailers and non-specified retail trade"
  47   "Transportation (including support activities for transportation)"
  48   "Postal service, couriers, and messengers"
  49   "Warehousing and storage"
  50   "Newspaper, periodical, book, and software publishing industries"
  51   "Motion picture, video, and sound recording industries"
  52   "Broadcasting and telecommunications"
  53   "Libraries and archives, internet publishing, web search portals, data processing and hosting services, and other information services"
  54   "Monetary authorities -- central bank"
  55   "Credit intermediation and related activities"
  56   "Securities, commodity contracts, and other financial investments and related activities"
  57   "Insurance carriers and related activities"
  58   "Real estate"
  59   "Automotive and other consumer goods rental and leasing services"
  60   "Commercial, industrial, and other intangible assets (except copyrighted works)"
  61   "Professional, scientific, and technical services industries"
  62   "Management of companies and enterprises industries"
  63   "Administrative and support and waste management and remediation services industries"
  64   "Education services industries"
  65   "Ambulatory health care services"
  66   "Hospitals"
  67   "Nursing and residential care facilities"
  68   "Social assistance"
  69   "Performing arts, spectator sports, promoters, agents, artists, writers and related industries"
  70   "Museums, historical sites, and similar institutions"
  71   "Amusement, gambling, and recreation industries"
  72   "Accommodation"
  73   "Food services and drinking places"
  74   "Repair and maintenance"
  75   "Personal services (barber shops, beauty salons, nail salons, laundry, funeral homes and cemetaries)"
  76   "Religious, grantmaking, civic, labor, professional, and similar organizations"
  77   "Private households"
  78   "Public administration industries"
  79   "Armed forces"
  97   "Refused, classified"
  98   "Not ascertained"
  99   "Don't know"
;
 
label define SA027X
  01   "Agriculture, Forestry, Fishing, and Hunting Industries"
  02   "Mining Industries"
  03   "Utilities Industries"
  04   "Construction Industries"
  05   "Manufacturing Industries"
  06   "Wholesale Trade Industries"
  07   "Retail Trade Industries"
  08   "Transportation and Warehousing Industries"
  09   "Information Industries"
  10   "Finance and Insurance Industries"
  11   "Real Estate and Rental and Leasing Industries"
  12   "Professional, Scientific, and Technical Services Industries"
  13   "Management of Companies and Enterprises Industries"
  14   "Administrative and Support and Waste Management and Remediation Services Industries"
  15   "Education Services Industries"
  16   "Health Care and Social Assistance Industries"
  17   "Arts, Entertainment, and Recreation Industries"
  18   "Accommodation and Food Services Industries"
  19   "Other Services (except Public Administration) Industries"
  20   "Public Administration Industries"
  21   "Armed Forces"
  97   "Refused, classified"
  98   "Not ascertained"
  99   "Don't know"
;
 
label define SA028X
  1    "Yes, information"
  2    "Yes, but no information"
  3    "No"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA029X
  01   "January"
  02   "February"
  03   "March"
  04   "April"
  05   "May"
  06   "June"
  07   "July"
  08   "August"
  09   "September"
  10   "October"
  11   "November"
  12   "December"
;
 
label define SA030X
  1    "Quarter 1"
  2    "Quarter 2"
  3    "Quarter 3"
  4    "Quarter 4"
;
 
label define SA031X
  1    "Experienced serious psychological distress"
  2    "Did not experience serious psychological distress"
  8    "Not ascertained"
;
 
label define SA032X
  1    "Spanish"
  2    "Other Language"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA033X
  1    "Separated"
  2    "Divorced"
  3    "Married"
  4    "Single/never married"
  5    "Widowed"
  9    "Unknown legal marital status"
;
 
label define SA034X
  1    "Reassigned to Medicaid from private"
;
 
label define SA035X
  1    "Married, spouse is present"
  2    "Married, spouse is not present"
  3    "Married, spouse presence unknown"
  4    "Widowed"
  5    "Divorced"
  6    "Separated"
  7    "Never married"
  8    "Living with a partner"
  9    "Unknown marital status"
;
 
label define SA036X
  1    "Medicare Advantage"
  2    "Private plan not Medicare Advantage"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA037X
  1    "Mentioned"
  2    "Not mentioned"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA038X
  1    "Minutes"
  2    "Hours"
  6    "Extreme value"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA039X
  1    "Multiple families in household"
  2    "Only one family in household"
  9    "Unknown"
;
 
label define SA040X
  0    "None"
  1    "1 or more"
;
 
label define SA041X
  1    "Not covered"
  2    "Covered"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA042X
  01   "Chief executives; general and operations managers; legislators"
  02   "Advertising, marketing, promotions, public relations, and sales managers"
  03   "Administrative services, compensation/benefits, human resources, training, production, purchasing, and transportion/distribution, and other operations managers"
  04   "All other management occupations"
  05   "Business operations specialists"
  06   "Financial specialists"
  07   "Computer specialists"
  08   "Mathematical science occupations"
  09   "Architects, surveyors, and cartographers"
  10   "Engineers"
  11   "Drafters, engineering, and mapping technicians"
  12   "Life scientists"
  13   "Physical scientists"
  14   "Social scientists and related workers"
  15   "Life, physical, and social science technicians"
  16   "Counselors, social workers, and other community and social service specialists"
  17   "Religious workers"
  18   "Lawyers, judges, and related workers"
  19   "Legal support workers"
  20   "Postsecondary teachers"
  21   "Primary, secondary, and special education school teachers"
  22   "Other teachers and instructors"
  23   "Librarians, curators, and archivists"
  24   "Other educational instruction and library occupations"
  25   "Art and design workers"
  26   "Entertainers and performers, sports and related workers"
  27   "Media and communication workers"
  28   "Media and communication equipment workers"
  29   "Health diagnosing and treating practitioners"
  30   "Health technologists and technicians"
  31   "Other healthcare practitioners and technical occupations"
  32   "Nursing, psychiatric, and home health aides"
  33   "Occupational and physical therapist assistants and aides"
  34   "Other healthcare support occupations"
  35   "First-line supervisors/managers, protective service workers"
  36   "Fire fighting and prevention workers"
  37   "Law enforcement workers"
  38   "Other protective service workers"
  39   "Supervisors, food preparation and serving workers"
  40   "Cooks and food preparation workers"
  41   "Food and beverage serving workers"
  42   "Other food preparation and serving related workers"
  43   "Supervisors, building and grounds cleaning and maintenance workers"
  44   "Building cleaning and pest control workers"
  45   "Grounds maintenance workers"
  46   "Supervisors, personal care and service workers"
  47   "Animal care and service workers"
  48   "Entertainment attendants and related workers"
  49   "Funeral service workers"
  50   "Personal appearance workers"
  51   "Transportation, tourism, and lodging attendants"
  52   "Other personal care and service workers"
  53   "Supervisors, sales workers"
  54   "Retail sales workers"
  55   "Sales representatives, services"
  56   "Sales representatives, wholesale and manufacturing"
  57   "Other sales and related workers"
  58   "Supervisors, office and administrative support workers"
  59   "Communications equipment operators"
  60   "Financial clerks"
  61   "Information and record clerks"
  62   "Material recording, scheduling, dispatching, and distributing workers"
  63   "Secretaries and administrative assistants"
  64   "Other office and administrative support workers"
  65   "Supervisors, farming, fishing, and forestry workers"
  66   "Agricultural workers"
  67   "Fishing and hunting workers"
  68   "Forest, conservation, and logging workers"
  69   "Supervisors, construction and extraction workers"
  70   "Construction trades workers"
  71   "Helpers, construction trades"
  72   "Other construction and related workers"
  73   "Extraction workers"
  74   "Supervisors of installation, maintenance, and repair workers"
  75   "Electrical and electronic equipment mechanics, installers, and repairers"
  76   "Vehicle and mobile equipment mechanics, installers, and repairers"
  77   "Other installation, maintenance, and repair occupations"
  78   "Supervisors, production workers"
  79   "Assemblers and fabricators"
  80   "Food processing workers"
  81   "Metal workers and plastic workers"
  82   "Printing workers"
  83   "Textile, apparel, and furnishings workers"
  84   "Woodworkers"
  85   "Plant and system operators"
  86   "Other production occupations"
  87   "Supervisors, transportation and material moving workers"
  88   "Air transportation workers"
  89   "Motor vehicle operators"
  90   "Rail transportation workers"
  91   "Water transportation workers"
  92   "Other transportation workers"
  93   "Material moving workers"
  94   "Military specific occupations"
  97   "Refused, classified"
  98   "Not ascertained"
  99   "Don't know"
;
 
label define SA043X
  01   "Management Occupations"
  02   "Business and Financial Operations Occupations"
  03   "Computer and Mathematical Occupations"
  04   "Architecture and Engineering Occupations"
  05   "Life, Physical, and Social Science Occupations"
  06   "Community and Social Services Occupations"
  07   "Legal Occupations"
  08   "Educational Instruction and Library Occupations"
  09   "Arts, Design, Entertainment, Sports and Media Occupations"
  10   "Healthcare Practitioners and Technical Occupations"
  11   "Healthcare Support Occupations"
  12   "Protective Service Occupations"
  13   "Food Preparation and Serving Related Occupations"
  14   "Building and Grounds Cleaning and Maintenance Occupations"
  15   "Personal Care and Service Occupations"
  16   "Sales and Related Occupations"
  17   "Office and Administrative Support Occupations"
  18   "Farming, Fishing, and Forestry Occupations"
  19   "Construction and Extraction Occupations"
  20   "Installation, Maintenance, and Repair Occupations"
  21   "Production Occupations"
  22   "Transportation and Material Moving Occupations"
  23   "Military Specific Occupations"
  97   "Refused, classified"
  98   "Not ascertained"
  99   "Don't know"
;
 
label define SA044X
  1    "Reassigned to other government from private"
;
 
label define SA045X
  1    "^GayLesbian"
  2    "Straight, that is, not ^gaylesbian"
  3    "Bisexual"
  4    "Something else"
  5    "I don't know the answer"
  7    "Refused"
  8    "Not Ascertained"
;
 
label define SA046X
  1    "Reassigned to other public from private"
;
 
label define SA047X
  1    "Yes, the sample adult is a parent of a child residing in the family"
  2    "There are minor children residing in family but sample adult is not their parent"
  3    "There are no minor children residing in the family"
  9    "Unknown"
;
 
label define SA048X
  0    "0 adults"
  1    "1 adult"
  2    "2 adults"
  3    "3+ adults"
  8    "Not Ascertained"
;
 
label define SA049X
  1    "1 adult"
  2    "2 adults"
  3    "3+ adults"
  8    "Not Ascertained"
;
 
label define SA050X
  0    "0 adults"
  1    "1 adult"
  2    "2 adults"
  3    "3+ adults (at least 3, may have unknown)"
  5    "at least 2 adults, has unknown"
  6    "at least 1 adult, has unknown"
  7    "0 adults, has unknown"
  8    "not ascertained (all unknown)"
;
 
label define SA051X
  0    "0 children"
  1    "1 child"
  2    "2 children"
  3    "3+ children"
  8    "Not Ascertained"
;
 
label define SA052X
  0    "Never"
  1    "Per day"
  2    "Per week"
  3    "Per month"
  4    "Per year"
  5    "Extreme value"
  6    "Unable to do this type of activity"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA053X
  01   "Through an employer, union, or professional organization"
  02   "Purchased directly"
  03   "Through Healthcare.gov or the Affordable Care Act, also known as Obamacare"
  04   "Through a state or local government or community program"
  05   "Other"
  06   "Through school"
  07   "Through parents"
  08   "Through other relative"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA054X
  1    "Reassigned to private from public"
;
 
label define SA055X
  1    "Proxy used"
  2    "Proxy not used"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA056X
  1    "Relative who lives in household"
  2    "Relative who doesn't live in household"
  3    "Nonrelative who lives in household"
  4    "Nonrelative who does not live in household"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA057X
  1    "Deductible is less than $1,600"
  2    "Deductible is $1,600 or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA058X
  1    "White only"
  2    "Black/African American only"
  3    "Asian only"
  4    "AIAN only"
  5    "AIAN and any other group"
  6    "Other single and multiple races"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't know"
;
 
label define SA059X
  01   "0.00 - 0.49"
  02   "0.50 - 0.74"
  03   "0.75 - 0.99"
  04   "1.00 - 1.24"
  05   "1.25 - 1.49"
  06   "1.50 - 1.74"
  07   "1.75 - 1.99"
  08   "2.00 - 2.49"
  09   "2.50 - 2.99"
  10   "3.00 - 3.49"
  11   "3.50 - 3.99"
  12   "4.00 - 4.49"
  13   "4.50 - 4.99"
  14   "5.00 or greater"
  98   "Not Ascertained"
;
 
label define SA060X
  10   "Sample Adult"
  20   "Sample Child"
  30   "Sample Adult Income"
  40   "Sample Child Income"
  50   "Paradata"
;
 
label define SA061X
  1    "Northeast"
  2    "Midwest"
  3    "South"
  4    "West"
;
 
label define SA062X
  0    "0 times"
  1    "1 time"
  2    "2 times"
  3    "3 times"
  4    "4 times"
  5    "5+ times"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA063X
  1    "Sample adult is parent of sample child"
  2    "Sample adult is not parent of  sample child"
  3    "No sample child in sample adult's family"
  9    "Unknown"
;
 
label define SA064X
  1    "Current every day smoker"
  2    "Current some day smoker"
  3    "Former smoker"
  4    "Never smoker"
  5    "Smoker, current status unknown"
  9    "Unknown if ever smoked"
;
 
label define SA065X
  0    "0 times"
  1    "1 time"
  2    "2 times"
  3    "3 times"
  4    "4 times"
  5    "5+ times"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA066X
  1    "Large central metro"
  2    "Large fringe metro"
  3    "Medium and small metro"
  4    "Nonmetropolitan"
;
 
label define SA067X
  1    "Yes"
  2    "No"
  9    "Unknown"
;
 
label define SA068X
  1    "Yes"
  2    "No"
  9    "Don't Know"
;
 
label define SA069X
  0    "No"
  1    "Yes"
;
 
label define SA070X
  1    "Yes"
  2    "No"
  3    "Unknown"
;
 
label define SA071X
  1    "Yes"
;
 
label define SA072X
  1    "Less than 1 year"
  2    "1 to less than 5 years"
  3    "5 to less than 10 years"
  4    "10 to less than 15 years"
  5    "15 years or more"
  9    "Unknown"
;
 
label define SA073X
  96   "Never smoked regularly"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA074X
  1    "Less than 65"
  2    "65 or older"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA075X
  1    "All of the time"
  2    "Most of the time"
  3    "Some of the time"
  4    "A little of the time"
  5    "None of the time"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA076X
  1    "Very worried"
  2    "Somewhat worried"
  3    "Not at all worried"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA077X
  1    "Before pregnancy"
  2    "During pregnancy"
  3    "After pregnancy"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA078X
  1    "Before pregnancy"
  2    "During pregnancy"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA079X
  1    "Better"
  2    "Worse"
  3    "No Change"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA080X
  01   "1/2 pack per day"
  02   "1 pack per day"
  03   "1 1/2 packs per day"
  04   "2 packs per day"
  05   "2 1/2 packs per day"
  06   "3 packs per day"
  07   "3 1/2 packs per day"
  08   "4 or more packs per day"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA081X
  1    "A few things"
  2    "A lot of things"
  3    "Almost everything"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA082X
  1    "Sometimes"
  2    "Often"
  3    "All of the time"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA083X
  1    "Difficulty remembering only"
  2    "Difficulty concentrating only"
  3    "Difficulty with both remembering and concentrating"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA084X
  1    "Enter 1 to Continue"
  8    "Not Ascertained"
;
 
label define SA085X
  1    "1 vaccination"
  2    "2 vaccinations"
  3    "3 or more vaccinations"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA086X
  997  "Refused"
  998  "Not Ascertained"
  999  "Don't Know"
;
 
label define SA087X
  997  "Refused"
  998  "Not Ascertained"
  999  "Don't Know"
;
 
label define SA088X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA089X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA090X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA091X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA092X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA093X
  1    "Less than 1 month"
  2    "1 month to less than 6 months"
  3    "6 months to less than 1 year"
  4    "1 year or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA094X
  1    "Type 1"
  2    "Type 2"
  3    "Other type of diabetes"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA095X
  1    "No difficulty"
  2    "Some difficulty"
  3    "A lot of difficulty"
  4    "Cannot do at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA096X
  1    "No difficulty"
  2    "A little difficulty"
  3    "Moderate difficulty"
  4    "A lot of difficulty"
  5    "Cannot smell at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA097X
  1    "No difficulty"
  2    "A little difficulty"
  3    "Moderate difficulty"
  4    "A lot of difficulty"
  5    "Cannot taste at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA098X
  00   "Never attended/kindergarten only"
  01   "Grade 1-11"
  02   "12th grade, no diploma"
  03   "GED or equivalent"
  04   "High School Graduate"
  05   "Some college, no degree"
  06   "Associate degree: occupational, technical, or vocational program"
  07   "Associate degree: academic program"
  08   "Bachelor's degree (Example: BA, AB, BS, BBA)"
  09   "Master's degree (Example: MA, MS, MEng, MEd, MBA)"
  10   "Professional School or Doctoral degree (Example: MD, DDS, DVM, JD, PhD, EdD)"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA099X
  1    "Employee of a PRIVATE company for wages"
  2    "A FEDERAL government employee"
  3    "A STATE government employee"
  4    "A LOCAL government employee"
  5    "Self-employed in OWN business, professional practice or farm"
  6    "Working WITHOUT PAY in a family-owned business or farm"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA100X
  1    "Within the past 12 months"
  2    "1-5 years ago"
  3    "Over 5 years ago"
  4    "Never worked"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA101X
  1    "Within the past 12 months"
  2    "1-5 years ago"
  3    "Over 5 years ago"
  4    "Never worked"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA102X
  01   "Unemployed, laid off, looking for work"
  02   "Seasonal/contract work"
  03   "Retired"
  04   "Unable to work for health reasons/disabled"
  05   "Taking care of house or family"
  06   "Going to school"
  07   "Working at a family-owned job or business not for pay"
  08   "Other"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA103X
  1    "Every day"
  2    "Some days"
  3    "Not at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA104X
  1    "Some of the day"
  2    "Most of the day"
  3    "All of the day"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA105X
  1    "Fully recovered"
  2    "Partially recovered"
  3    "Not recovered at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA106X
  1    "All of the time"
  2    "Some of the time"
  3    "Rarely"
  4    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA107X
  1    "Almost always"
  2    "Most of the time"
  3    "Some of the time"
  4    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't know"
;
 
label define SA108X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA109X
  1    "Owned or being bought"
  2    "Rented"
  3    "Other arrangement"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA110X
  1    "Never"
  2    "Some days"
  3    "Most days"
  4    "Every day"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA111X
  1    "Daily"
  2    "Weekly"
  3    "Monthly"
  4    "A few times a year"
  5    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA112X
  1    "English"
  2    "Other language"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA113X
  1    "A little"
  2    "A lot"
  3    "Somewhere in between a little and a lot"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA114X
  1    "Not at all"
  2    "A little"
  3    "A lot"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA115X
  1    "Married"
  2    "Living with a partner together as an unmarried couple"
  3    "Neither"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA116X
  1    "Part A- hospital only"
  2    "Part B- medical only"
  3    "Both Part A and Part B"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA117X
  1    "Menthol"
  2    "Non-menthol"
  3    "No usual type"
  7    "Refused"
  8    "Not ascertained"
  9    "Don't know"
;
 
label define SA118X
  1    "Mentioned"
  2    "Not mentioned"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA119X
  01   "January"
  02   "February"
  03   "March"
  04   "April"
  05   "May"
  06   "June"
  07   "July"
  08   "August"
  09   "September"
  10   "October"
  11   "November"
  12   "December"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA120X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA121X
  1    "Every day"
  2    "Every 2 to 3 days"
  3    "About once a week"
  4    "Less than once a week"
  7    "Don't know"
  8    "Not Ascertained"
  9    "Refused"
;
 
label define SA122X
  1    "Excellent"
  2    "Very Good"
  3    "Good"
  4    "Fair"
  5    "Poor"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA123X
  1    "A doctor's office or health center"
  2    "Urgent care center or clinic in a drug store or grocery store"
  3    "Hospital emergency room"
  4    "A VA Medical Center or VA outpatient clinic"
  5    "Some other place"
  6    "Does not go to one place most often"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA124X
  1    "Less than ^HDHPAMT_A"
  2    "^HDHPAMT_A or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA125X
  1    "Child"
  2    "Spouse"
  3    "Former spouse"
  4    "Some other relationship"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA126X
  1    "One pneumonia shot"
  2    "Two pneumonia shots"
  3    "More than two pneumonia shots"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA127X
  1    "Very satisfied"
  2    "Satisfied"
  3    "Dissatisfied"
  4    "Very dissatisfied"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA128X
  1    "Male"
  2    "Female"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA129X
  1    "First shot"
  2    "Second shot"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA130X
  1    "One Shingrix shot"
  2    "Two Shingrix shots"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA131X
  1    "Get a severe sunburn with blisters"
  2    "Have a moderate sunburn with peeling"
  3    "Burn mildly with some or no darkening/tanning"
  4    "Turn darker without sunburn"
  5    "Nothing would happen to my skin"
  6    "Do not go out in the sun"
  7    "Refused"
  8    "Not Acertained"
  9    "Don't Know"
;
 
label define SA132X
  1    "SSI"
  2    "SSDI"
  3    "Both SSI and SSDI"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA133X
  0    "Not applicable/None eligible"
  1    "Completed"
  2    "HH member selected"
  3    "Reached Sample Adult"
  4    "Started HIS section"
  5    "Sufficient Partial"
  6    "HH member selected and no longer eligible"
  7    "Refused"
;
 
label define SA134X
  1    "Always"
  2    "Usually"
  3    "Sometimes"
  4    "Rarely"
  5    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA135X
  1    "Always"
  2    "Most of the time"
  3    "Sometimes"
  4    "Rarely"
  5    "Never"
  6    "Don't spend time outdoors"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA136X
  1    "Within the past year (anytime less than 12 months ago)"
  2    "Within the past 2 years (1 year but less than 2 years ago)"
  3    "Within the past 3 years (2 years but less than 3 years ago)"
  4    "Within the past 5 years (3 years but less than 5 years ago)"
  5    "Within the past 10 years (5 years but less than 10 year ago)"
  6    "10 years ago or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA137X
  0    "Never"
  1    "Within the past year (anytime less than 12 months ago)"
  2    "Within the last 2 years (1 year but less than 2 years ago)"
  3    "Within the last 3 years (2 years but less than 3 years ago)"
  4    "Within the last 5 years (3 years but less than 5 years ago)"
  5    "Within the last 10 years (5 years but less than 10 years ago)"
  6    "10 years ago or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA138X
  1    "Less than 1 year"
  2    "1 to 3 years"
  3    "4 to 10 years"
  4    "11 to 20 years"
  5    "More than 20 years"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA139X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA140X
  1    "Often true"
  2    "Sometimes true"
  3    "Never true"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA141X
  1    "Yes"
  2    "There is NO place"
  3    "There is MORE THAN ONE place"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA142X
  9997 "Refused"
  9998 "Not Ascertained"
  9999 "Don't Know"
;
 
label define SA143X
  1    "Yes"
  2    "No"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
* ASSOCIATE VARIABLES WITH VALUE LABEL DEFINITIONS;
 
* IDN  VALUE LABEL ASSOCIATIONS;
label values  rectype          SA060X; 
 
* UCF  VALUE LABEL ASSOCIATIONS;
label values  urbrrl23         SA066X; label values   region           SA061X; 
 
* FLG  VALUE LABEL ASSOCIATIONS;
label values  hhrespsa_flg     SA071X; 
 
* GEN  VALUE LABEL ASSOCIATIONS;
label values  proxyflag_a      SA055X; label values   proxyrel2_a      SA056X;
label values  intv_qrt         SA030X; label values   intv_mon         SA029X;
label values  hhstat_a         SA023X; label values   astatnew         SA133X; 
 
* HHC  VALUE LABEL ASSOCIATIONS;
label values  afnow            SA143X; label values   pcnt18uptc       SA048X;
label values  pcntlt18tc       SA051X; label values   sex_a            SA128X;
label values  age65            SA074X; label values   hisp_a           SA143X;
label values  hisdetp_a        SA024X; label values   raceallp_a       SA058X;
label values  hispallp_a       SA025X; label values   educp_a          SA098X; 
 
* FAM  VALUE LABEL ASSOCIATIONS;
label values  pcntadlt_a       SA049X; label values   pcntkids_a       SA051X;
label values  over65flg_a      SA040X; label values   mltfamflg_a      SA039X;
label values  maxeducp_a       SA098X; 
 
* HIS  VALUE LABEL ASSOCIATIONS;
label values  phstat_a         SA122X; 
 
* LSF  VALUE LABEL ASSOCIATIONS;
label values  lsatis4_a        SA127X; 
 
* HYP  VALUE LABEL ASSOCIATIONS;
label values  hypev_a          SA143X; label values   hypdif_a         SA143X;
label values  hyp12m_a         SA143X; label values   hypmed_a         SA143X; 
 
* CHL  VALUE LABEL ASSOCIATIONS;
label values  chlev_a          SA143X; label values   chl12m_a         SA143X;
label values  chlmed_a         SA143X; 
 
* CVC  VALUE LABEL ASSOCIATIONS;
label values  chdev_a          SA143X; label values   angev_a          SA143X;
label values  miev_a           SA143X; label values   strev_a          SA143X; 
 
* AST  VALUE LABEL ASSOCIATIONS;
label values  asev_a           SA143X; label values   astill_a         SA143X;
label values  asat12m_a        SA143X; label values   aser12m_a        SA143X; 
 
* CAN  VALUE LABEL ASSOCIATIONS;
label values  canev_a          SA143X; label values   bladdcan_a       SA037X;
label values  bloodcan_a       SA037X; label values   bonecan_a        SA037X;
label values  braincan_a       SA037X; label values   breascan_a       SA037X;
label values  cervican_a       SA037X; label values   coloncan_a       SA037X;
label values  esophcan_a       SA037X; label values   gallbcan_a       SA037X;
label values  laryncan_a       SA037X; label values   leukecan_a       SA037X;
label values  livercan_a       SA037X; label values   lungcan_a        SA037X;
label values  lymphcan_a       SA037X; label values   melancan_a       SA037X;
label values  mouthcan_a       SA037X; label values   ovarycan_a       SA037X;
label values  pancrcan_a       SA037X; label values   prostcan_a       SA037X;
label values  rectucan_a       SA037X; label values   sknmcan_a        SA037X;
label values  sknnmcan_a       SA037X; label values   skndkcan_a       SA037X;
label values  stomacan_a       SA037X; label values   throacan_a       SA037X;
label values  thyrocan_a       SA037X; label values   uterucan_a       SA037X;
label values  hdnckcan_a       SA037X; label values   colrccan_a       SA037X;
label values  othercanp_a      SA037X; 
 
* DIB  VALUE LABEL ASSOCIATIONS;
label values  predib_a         SA143X; label values   gesdib_a         SA143X;
label values  dibev_a          SA143X; label values   dibpill_a        SA143X;
label values  dibins_a         SA143X; label values   dibinstime_a     SA093X;
label values  dibinsstop_a     SA143X; label values   dibinsstyr_a     SA143X;
label values  dibglp_a         SA143X; label values   dibtype_a        SA094X; 
 
* CON  VALUE LABEL ASSOCIATIONS;
label values  copdev_a         SA143X; label values   arthev_a         SA143X;
label values  demenev_a        SA143X; label values   anxev_a          SA143X;
label values  depev_a          SA143X; 
 
* RCN  VALUE LABEL ASSOCIATIONS;
label values  kidweakev_a      SA143X; label values   hepev_a          SA143X;
label values  liverev_a        SA143X; 
 
* SCE  VALUE LABEL ASSOCIATIONS;
label values  crohnsev_a       SA143X; label values   ulccolev_a       SA143X;
label values  psorev_a         SA143X; 
 
* CFS  VALUE LABEL ASSOCIATIONS;
label values  cfsev_a          SA143X; label values   cfsnow_a         SA143X; 
 
* TSH  VALUE LABEL ASSOCIATIONS;
label values  coldflu12m_a     SA143X; label values   drymth12m_a      SA143X; 
 
* ISN  VALUE LABEL ASSOCIATIONS;
label values  medrxtrt_a       SA143X; label values   hlthcond_a       SA143X; 
 
* ALG  VALUE LABEL ASSOCIATIONS;
label values  curresp_a        SA143X; label values   dxresp_a         SA143X;
label values  curfood_a        SA143X; label values   dxfood_a         SA143X;
label values  curskin_a        SA143X; label values   dxskin_a         SA143X; 
 
* BMI  VALUE LABEL ASSOCIATIONS;
label values  pregnow_a        SA143X; label values   bmicat_a         SA002X;
label values  bmicatd_a        SA003X; 
 
* VIS  VALUE LABEL ASSOCIATIONS;
label values  wearglss_a       SA143X; label values   visiondf_a       SA095X; 
 
* HEA  VALUE LABEL ASSOCIATIONS;
label values  hearaid_a        SA143X; label values   hearaidfr_a      SA106X;
label values  hearingdf_a      SA095X; label values   hearqtrm_a       SA095X;
label values  hearnyrm_a       SA095X; 
 
* MOB  VALUE LABEL ASSOCIATIONS;
label values  diff_a           SA095X; label values   equip_a          SA143X;
label values  wlk100_a         SA095X; label values   wlk13m_a         SA095X;
label values  steps_a          SA095X; label values   canewlkr_a       SA143X;
label values  wchair_a         SA143X; label values   perasst_a        SA143X;
label values  noeqwlk100_a     SA095X; label values   noeqwlk13m_a     SA095X;
label values  noeqsteps_a      SA095X; label values   eqwlk100_a       SA095X;
label values  eqwlk13m_a       SA095X; label values   eqsteps_a        SA095X; 
 
* COM  VALUE LABEL ASSOCIATIONS;
label values  comdiff_a        SA095X; label values   comusesl_a       SA143X; 
 
* COG  VALUE LABEL ASSOCIATIONS;
label values  cogmemdff_a      SA095X; label values   cogtypedff_a     SA083X;
label values  cogfrqdff_a      SA082X; label values   cogamtdff_a      SA081X; 
 
* UPP  VALUE LABEL ASSOCIATIONS;
label values  uppslfcr_a       SA095X; label values   uppraise_a       SA095X;
label values  uppobjct_a       SA095X; label values   disab3_a         SA068X;
label values  anydiff_a        SA068X; 
 
* SOC  VALUE LABEL ASSOCIATIONS;
label values  socerrnds_a      SA095X; label values   socsclpar_a      SA095X;
label values  socwrklim_a      SA143X; 
 
* ADO  VALUE LABEL ASSOCIATIONS;
label values  devdonset_a      SA143X; 
 
* INS  VALUE LABEL ASSOCIATIONS;
label values  notcov_a         SA041X; label values   cover_a          SA006X;
label values  cover65_a        SA007X; label values   sincovde_a       SA143X;
label values  sincovvs_a       SA143X; label values   sincovrx_a       SA143X;
label values  medicare_a       SA028X; label values   mcpart_a         SA116X;
label values  mcchoice_a       SA143X; label values   mchmo_a          SA143X;
label values  mcadvr_a         SA036X; label values   mcdncov_a        SA143X;
label values  mcvscov_a        SA143X; label values   mcpartd_a        SA143X;
label values  medicaid_a       SA028X; label values   maxchng_a        SA143X;
label values  maprem_a         SA143X; label values   madeduc_a        SA143X;
label values  mahdhp_a         SA057X; label values   maflg_a          SA034X;
label values  private_a        SA028X; label values   exchange_a       SA019X;
label values  polhld1_a        SA143X; label values   prplcov1_a       SA143X;
label values  prpolh1_a        SA125X; label values   prplcov1_c_a     SA143X;
label values  plnwrkr1_a       SA053X; label values   plnexchg1_a      SA143X;
label values  pln1pay1_a       SA118X; label values   pln1pay2_a       SA118X;
label values  pln1pay3_a       SA118X; label values   pln1pay4_a       SA118X;
label values  pln1pay5_a       SA118X; label values   pln1pay6_a       SA118X;
label values  prdeduc1_a       SA143X; label values   prhdhp1_a        SA124X;
label values  hsahra1_a        SA143X; label values   prrxcov1_a       SA143X;
label values  prdncov1_a       SA143X; label values   prvscov1_a       SA143X;
label values  exchpr1_a        SA020X; label values   prflg_a          SA054X;
label values  pxchng1_a        SA143X; label values   prprem1_a        SA143X;
label values  plexchpr1_a      SA020X; label values   polhld2_a        SA143X;
label values  prplcov2_a       SA143X; label values   prpolh2_a        SA125X;
label values  prplcov2_c_a     SA143X; label values   plnwrkr2_a       SA053X;
label values  plnexchg2_a      SA143X; label values   pln2pay1_a       SA118X;
label values  pln2pay2_a       SA118X; label values   pln2pay3_a       SA118X;
label values  pln2pay4_a       SA118X; label values   pln2pay5_a       SA118X;
label values  pln2pay6_a       SA118X; label values   prdeduc2_a       SA143X;
label values  prhdhp2_a        SA124X; label values   hsahra2_a        SA143X;
label values  prrxcov2_a       SA143X; label values   prdncov2_a       SA143X;
label values  prvscov2_a       SA143X; label values   exchpr2_a        SA020X;
label values  chip_a           SA028X; label values   chxchng_a        SA143X;
label values  chprem_a         SA143X; label values   chdeduc_a        SA143X;
label values  chhdhp_a         SA057X; label values   chflg_a          SA004X;
label values  othpub_a         SA028X; label values   opxchng_a        SA143X;
label values  opprem_a         SA143X; label values   opdeduc_a        SA143X;
label values  ophdhp_a         SA057X; label values   plexchop_a       SA020X;
label values  opflg_a          SA046X; label values   othgov_a         SA028X;
label values  ogxchng_a        SA143X; label values   ogprem_a         SA143X;
label values  ogdeduc_a        SA143X; label values   oghdhp_a         SA057X;
label values  plexchog_a       SA020X; label values   ogflg_a          SA044X;
label values  military_a       SA028X; label values   milspc1r_a       SA118X;
label values  milspc2_a        SA118X; label values   milspc3_a        SA118X;
label values  ihs_a            SA143X; label values   hilast_a         SA137X;
label values  hilastmy_a       SA120X; label values   histopjob_a      SA143X;
label values  histopmiss_a     SA143X; label values   histopage_a      SA143X;
label values  histopcost_a     SA143X; label values   histopelig_a     SA143X;
label values  rsnhicost_a      SA143X; label values   rsnhiwant_a      SA143X;
label values  rsnhielig_a      SA143X; label values   rsnhiconf_a      SA143X;
label values  rsnhimeet_a      SA143X; label values   rsnhiwait_a      SA143X;
label values  rsnhioth_a       SA143X; label values   rsnhijob_a       SA143X;
label values  rsnhimiss_a      SA143X; label values   hinotyr_a        SA143X;
label values  hinotmyr_a       SA120X; label values   milspc1_a        SA118X;
label values  hicov_a          SA143X; label values   hikind01_a       SA118X;
label values  hikind02_a       SA118X; label values   hikind03_a       SA118X;
label values  hikind04_a       SA118X; label values   hikind05_a       SA118X;
label values  hikind06_a       SA118X; label values   hikind07_a       SA118X;
label values  hikind08_a       SA118X; label values   hikind09_a       SA118X;
label values  hikind10_a       SA118X; label values   mcareprb_a       SA143X;
label values  mcaidprb_a       SA143X; 
 
* PAY  VALUE LABEL ASSOCIATIONS;
label values  paybll12m_a      SA143X; label values   paynobllnw_a     SA143X;
label values  payworry_a       SA076X; 
 
* CVL  VALUE LABEL ASSOCIATIONS;
label values  evercovd_a       SA143X; label values   longcovd2_a      SA143X;
label values  sympnow1_a       SA143X; label values   lcvdact_a        SA114X; 
 
* TSC  VALUE LABEL ASSOCIATIONS;
label values  cvdsymsm2_a      SA143X; label values   cvdparos_a       SA143X;
label values  cvdsmelchg_a     SA067X; label values   cvdsmrec2_a      SA105X;
label values  cvdsymtst2_a     SA143X; label values   cvdtstrec2_a     SA105X; 
 
* UTZ  VALUE LABEL ASSOCIATIONS;
label values  lastdr_a         SA137X; label values   wellness_a       SA143X;
label values  wellvis_a        SA137X; label values   usualpl_a        SA141X;
label values  usplkind_a       SA123X; label values   retailhc12mtc_a  SA062X;
label values  urgcc12mtc_a     SA065X; label values   emerg12mtc_a     SA018X;
label values  hospongt_a       SA143X; label values   meddl12m_a       SA143X;
label values  medng12m_a       SA143X; 
 
* TLH  VALUE LABEL ASSOCIATIONS;
label values  virapp12m_a      SA143X; 
 
* HIT  VALUE LABEL ASSOCIATIONS;
label values  accssint_a       SA143X; label values   accsshom_a       SA143X;
label values  hitlook_a        SA143X; label values   hitcomm_a        SA143X;
label values  hittest_a        SA143X; 
 
* PMD  VALUE LABEL ASSOCIATIONS;
label values  rx12m_a          SA143X; label values   rxsk12m_a        SA143X;
label values  rxls12m_a        SA143X; label values   rxdl12m_a        SA143X;
label values  rxdg12m_a        SA143X; 
 
* IMS  VALUE LABEL ASSOCIATIONS;
label values  pregfluyr_a      SA143X; label values   livebirth_a      SA143X;
label values  shtflu12m_a      SA143X; label values   shtflum_a        SA119X;
label values  flupreg_a        SA078X; label values   flupreg2_a       SA077X;
label values  shtcvd191_a      SA143X; label values   shtcvd19nm2_a    SA085X;
label values  cvdvac1m2_a      SA119X; label values   cvdvac1y2_a      SA142X;
label values  shtpnuev_a       SA143X; label values   shtpneunb_a      SA126X;
label values  shtshingl1_a     SA143X; label values   shingwhen1_a     SA143X;
label values  shingrix3_a      SA143X; label values   shingrixn3_a     SA130X;
label values  shingrixfs1_a    SA129X; label values   tdappreg_a       SA143X;
label values  shthepa_a        SA143X; label values   workhealth_a     SA143X;
label values  wrkhlthfc_a      SA143X; label values   travel_a         SA143X; 
 
* ANX  VALUE LABEL ASSOCIATIONS;
label values  anxfreq_a        SA111X; label values   anxmed_a         SA143X;
label values  anxlevel_a       SA113X; 
 
* DEP  VALUE LABEL ASSOCIATIONS;
label values  depfreq_a        SA111X; label values   depmed_a         SA143X;
label values  deplevel_a       SA113X; 
 
* MHC  VALUE LABEL ASSOCIATIONS;
label values  mhrx_a           SA143X; label values   mhthrpy_a        SA143X;
label values  mhtpynow_a       SA143X; label values   mhthdly_a        SA143X;
label values  mhthnd_a         SA143X; 
 
* SPD  VALUE LABEL ASSOCIATIONS;
label values  sad_a            SA075X; label values   nervous_a        SA075X;
label values  restless_a       SA075X; label values   hopeless_a       SA075X;
label values  effort_a         SA075X; label values   worthless_a      SA075X;
label values  k6spd_a          SA031X; 
 
* REP  VALUE LABEL ASSOCIATIONS;
label values  repstrain_a      SA143X; label values   replimit_a       SA143X;
label values  repsawdoc_a      SA143X; label values   repfutwrk_a      SA143X;
label values  repstopchg_a     SA143X; label values   repreduce_a      SA143X;
label values  repwrkcaus_a     SA143X; 
 
* INJ  VALUE LABEL ASSOCIATIONS;
label values  anyinjury_a      SA143X; label values   injlimit_a       SA143X;
label values  injhome_a        SA143X; label values   injwork_a        SA143X;
label values  injsports_a      SA143X; label values   injfall_a        SA143X;
label values  injfallhom_a     SA143X; label values   injfallwrk_a     SA143X;
label values  injmotor_a       SA143X; label values   injmvtype1_a     SA118X;
label values  injmvtype2_a     SA118X; label values   injmvtype3_a     SA118X;
label values  injmvtype4_a     SA118X; label values   injmvtype5_a     SA118X;
label values  injchores_a      SA143X; label values   injsawdoc_a      SA143X;
label values  injer_a          SA143X; label values   injhosp_a        SA143X;
label values  injbones_a       SA143X; label values   injstitch_a      SA143X;
label values  injfutwrk_a      SA143X; label values   injstopchg_a     SA143X;
label values  injreduce_a      SA143X; 
 
* TBI  VALUE LABEL ASSOCIATIONS;
label values  tbilcdcmg_a      SA143X; label values   tbihlsbmc_a      SA143X;
label values  tbisport_a       SA143X; label values   tbileague_a      SA143X;
label values  tbieval_a        SA143X; 
 
* FGE  VALUE LABEL ASSOCIATIONS;
label values  fgefrqtrd_a      SA110X; label values   fgelngtrd_a      SA104X;
label values  fgelevtrd_a      SA113X; 
 
* CIG  VALUE LABEL ASSOCIATIONS;
label values  smkev_a          SA143X; label values   smkage_a         SA073X;
label values  smknow_a         SA103X; label values   smkcigst_a       SA064X;
label values  cignow_a         SA092X; label values   smk30d_a         SA088X;
label values  cig30d_a         SA092X; label values   mentholc_a       SA117X;
label values  smkqt12m_a       SA143X; label values   smkqttp_a        SA013X;
label values  smkqtnp_a        SA087X; label values   mentholf_a       SA117X;
label values  avgpackcig_a     SA080X; label values   smktlk1_a        SA143X;
label values  ecigev_a         SA143X; label values   ecignow_a        SA103X;
label values  smkecigst_a      SA016X; 
 
* OTB  VALUE LABEL ASSOCIATIONS;
label values  cigarev_a        SA143X; label values   cigarcur_a       SA103X;
label values  cigar30d_a       SA088X; label values   smokelsev1_a     SA143X;
label values  smokelscr1_a     SA103X; 
 
* LCS  VALUE LABEL ASSOCIATIONS;
label values  ctscanev1_a      SA143X; label values   ctlngwhn1_a      SA136X;
label values  ctlngcan1_a      SA143X; 
 
* ALC  VALUE LABEL ASSOCIATIONS;
label values  drklife_a        SA143X; label values   drk12mn_a        SA086X;
label values  drk12mtp_a       SA014X; label values   drk12myr_a       SA010X;
label values  drkavg12m_a      SA092X; label values   drk12anyr_a      SA143X;
label values  drkstat_a        SA015X; label values   drkbng12m_a      SA143X;
label values  drkany30d_a      SA143X; label values   drkbng30d_a      SA089X;
label values  drkhvy12m_a      SA143X; label values   drkadvise1_a     SA143X; 
 
* PHY  VALUE LABEL ASSOCIATIONS;
label values  modnr_a          SA009X; label values   modtpr_a         SA052X;
label values  modlnr_a         SA012X; label values   modltpr_a        SA038X;
label values  modmin_a         SA011X; label values   vignr_a          SA009X;
label values  vigtpr_a         SA052X; label values   viglnr_a         SA012X;
label values  vigltpr_a        SA038X; label values   vigmin_a         SA011X;
label values  pa18_02r_a       SA001X; label values   strnr_a          SA009X;
label values  strtpr_a         SA052X; label values   pa18_05r_a       SA008X; 
 
* WLK  VALUE LABEL ASSOCIATIONS;
label values  wlktran_a        SA143X; label values   wlktranday_a     SA090X;
label values  wlktrantpd_a     SA139X; label values   wlkleis_a        SA143X;
label values  wlkleisday_a     SA090X; label values   wlkleistpd_a     SA139X; 
 
* ENV  VALUE LABEL ASSOCIATIONS;
label values  homewlk_a        SA107X; label values   roadswlk_a       SA143X;
label values  shopswlk_a       SA143X; label values   transitwlk_a     SA143X;
label values  funwlk_a         SA143X; label values   relaxwlk_a       SA143X;
label values  sidewlk_a        SA143X; label values   trafficwlk_a     SA143X;
label values  crimewlk_a       SA143X; label values   animalwlk_a      SA143X;
label values  weatherwlk_a     SA107X; label values   peoplewlk_a      SA121X; 
 
* CPA  VALUE LABEL ASSOCIATIONS;
label values  advactive_a      SA143X; 
 
* SUN  VALUE LABEL ASSOCIATIONS;
label values  sunskin1_a       SA131X; label values   suntan1_a        SA135X;
label values  anysburn1_a      SA143X; label values   sburnwrk_a       SA143X;
label values  sburntan_a       SA143X; label values   sburnphy_a       SA143X;
label values  sburnwat_a       SA143X; label values   sburnscr_a       SA143X;
label values  sburnalc_a       SA143X; 
 
* SLP  VALUE LABEL ASSOCIATIONS;
label values  slphours_a       SA108X; label values   slprest_a        SA110X;
label values  slpfll_a         SA110X; label values   slpsty_a         SA110X;
label values  slpmed1_a        SA110X; label values   slpmed2_a        SA110X;
label values  slpmed3_a        SA110X; label values   slpmedintro_a    SA084X; 
 
* SSL  VALUE LABEL ASSOCIATIONS;
label values  support_a        SA134X; label values   lonely_a         SA134X; 
 
* TSM  VALUE LABEL ASSOCIATIONS;
label values  smelldf_a        SA096X; label values   smellcomp_a      SA079X;
label values  smellpht_a       SA143X; label values   smellpar_a       SA143X;
label values  tastedf_a        SA097X; label values   tastecomp_a      SA079X;
label values  tasteflav_a      SA079X; label values   tasteunw_a       SA143X;
label values  tstsmhp2_a       SA143X; label values   tstsmlast_a      SA136X; 
 
* ORN  VALUE LABEL ASSOCIATIONS;
label values  orient_a         SA045X; 
 
* MAR  VALUE LABEL ASSOCIATIONS;
label values  marital_a        SA115X; label values   spousliv_a       SA143X;
label values  spousep_a        SA143X; label values   evrmarried_a     SA143X;
label values  marstat_a        SA035X; label values   legmstat_a       SA033X;
label values  spousesex_a      SA128X; label values   saspprace_a      SA070X;
label values  saspphisp_a      SA070X; label values   spouseducp_a     SA017X;
label values  spouswrk_a       SA143X; label values   spouswkft_a      SA143X;
label values  prtnrsex_a       SA128X; label values   prtnreducp_a     SA017X;
label values  prtnrwrk_a       SA143X; label values   prtnrwkft_a      SA143X;
label values  saparentsc_a     SA063X; label values   parstat_a        SA047X; 
 
* VET  VALUE LABEL ASSOCIATIONS;
label values  afvet_a          SA143X; label values   afvettrn_a       SA143X;
label values  combat_a         SA143X; label values   vadisb_a         SA143X;
label values  vahosp_a         SA143X; label values   vacareev_a       SA143X; 
 
* NAT  VALUE LABEL ASSOCIATIONS;
label values  natusborn_a      SA143X; label values   yrsinus_a        SA072X;
label values  citznstp_a       SA005X; 
 
* LNG  VALUE LABEL ASSOCIATIONS;
label values  langhm_a         SA143X; label values   langspecr_a      SA032X;
label values  langdoc_a        SA112X; label values   langmed_a        SA112X;
label values  langsoc_a        SA112X; 
 
* SCH  VALUE LABEL ASSOCIATIONS;
label values  schcurenr_a      SA143X; 
 
* EMP  VALUE LABEL ASSOCIATIONS;
label values  emplastwk_a      SA143X; label values   empnowrk_a       SA143X;
label values  empwhynot_a      SA102X; label values   empwhenwrk_a     SA101X;
label values  empwrklsw1_a     SA143X; label values   emplstwor1_a     SA100X;
label values  empwrkft1_a      SA143X; label values   empsicklv_a      SA143X;
label values  emphealins_a     SA143X; 
 
* EMD  VALUE LABEL ASSOCIATIONS;
label values  emdindstn1_a     SA026X; label values   emdindstn2_a     SA027X;
label values  emdoccupn1_a     SA042X; label values   emdoccupn2_a     SA043X;
label values  emdsuper_a       SA143X; label values   emdwrkcat1_a     SA099X; 
 
* VOL  VALUE LABEL ASSOCIATIONS;
label values  cevolun1_a       SA143X; label values   cevolun2_a       SA143X; 
 
* FEM  VALUE LABEL ASSOCIATIONS;
label values  pcntadwkp1_a     SA050X; label values   pcntadwfp1_a     SA050X; 
 
* INC  VALUE LABEL ASSOCIATIONS;
label values  incwrko_a        SA143X; label values   incinter_a       SA143X;
label values  incssrr_a        SA143X; label values   incssissdi_a     SA143X;
label values  ssissdibth_a     SA132X; label values   ssissdidsb_a     SA143X;
label values  incwelf_a        SA143X; label values   incretire_a      SA143X;
label values  incothr_a        SA143X; label values   ratcat_a         SA059X;
label values  inctcflg_a       SA069X; 
 
* FOO  VALUE LABEL ASSOCIATIONS;
label values  fsnap12m_a       SA143X; label values   fsnap30d_a       SA143X;
label values  fwic12m_a        SA143X; label values   flunch12m1_a     SA143X; 
 
* FDS  VALUE LABEL ASSOCIATIONS;
label values  fdsrunout_a      SA140X; label values   fdslast_a        SA140X;
label values  fdsbalance_a     SA140X; label values   fdsskip_a        SA143X;
label values  fdsskipdys_a     SA091X; label values   fdsless_a        SA143X;
label values  fdshungry_a      SA143X; label values   fdsweight_a      SA143X;
label values  fdsnoteat_a      SA143X; label values   fdsnedays_a      SA091X;
label values  fdscat3_a        SA021X; label values   fdscat4_a        SA022X; 
 
* HOU  VALUE LABEL ASSOCIATIONS;
label values  houyrsliv_a      SA138X; label values   houtenure_a      SA109X;
label values  hougvasst_a      SA143X; 
 
* SDH  VALUE LABEL ASSOCIATIONS;
label values  housecost_a      SA143X; 
 
* TBH  VALUE LABEL ASSOCIATIONS;
label values  transpor_a       SA143X; 
 
* CIV  VALUE LABEL ASSOCIATIONS;
label values  cemmetng_a       SA143X; label values   cevotelc_a       SA143X; 
 
describe;
#delimit cr
 
 

save NHIS_2024.dta, replace

use NHIS_2024.dta, replace 

* Age: 51-64, excluding age 55
tab agep_a, missing
keep if agep_a > 50
drop if agep_a == 55
keep if agep_a < 65


* Employer-sponsored private insurance
tab plnwrkr1_a, missing
tab plnwrkr2_a, missing
gen employer_ins = 0
replace employer_ins = 1 if plnwrkr1_a == 1 | plnwrkr2_a == 1
keep if employer_ins == 1


* Routine checkup / wellness visit in previous year
gen checkup1 = 0
replace checkup1 = 1 if lastdr_a == 1 & wellness_a == 1
replace checkup1 = 1 if wellvis_a == 1
tab checkup1, missing
keep if checkup1 == 1


tab smkev_a, missing
* Restrict to respondents with known smoking status
keep if smkev_a == 1 | smkev_a == 2


* CONSTRUCT PACK-YEARS

* Average cigarettes smoked per day over smoking history

tab avgnumcig_a, missing

gen avg_cigs_day = real(avgnumcig_a)

* Refused / not ascertained / don't know
replace avg_cigs_day = . if inlist(avg_cigs_day, 97, 98, 99)

* Respondents who reported smoking in packs rather than cigarettes
* 1 = 0.5 pack, 2 = 1 pack, 3 = 1.5 packs, etc.
replace avg_cigs_day = avgpackcig_a * 10 ///
    if trim(avgnumcig_a) == "P" & inrange(avgpackcig_a, 1, 8)


*------------------------------------------------------------
* Years since quitting
*
* SMKNOW_A:
*   1 = smokes every day
*   2 = smokes some days
*   3 = does not currently smoke
*------------------------------------------------------------

gen quit_years = .

* Current smokers
replace quit_years = 0 if smkev_a == 1 & inlist(smknow_a, 1, 2)

* Former smokers: quit duration reported in days
replace quit_years = smkqtnp_a / 365.25 if smkev_a == 1 & smknow_a == 3 & smkqttp_a == 1 & inrange(smkqtnp_a, 1, 365)

* Former smokers: quit duration reported in weeks
replace quit_years = smkqtnp_a / 52.1775 if smkev_a == 1 & smknow_a == 3 & smkqttp_a == 2 & inrange(smkqtnp_a, 1, 365)

* Former smokers: quit duration reported in months
replace quit_years = smkqtnp_a / 12 if smkev_a == 1 & smknow_a == 3 & smkqttp_a == 3 & inrange(smkqtnp_a, 1, 365)

* Former smokers: quit duration reported in years
replace quit_years = smkqtnp_a if smkev_a == 1 & smknow_a == 3 & smkqttp_a == 4 & inrange(smkqtnp_a, 1, 70)

*------------------------------------------------------------
* Years smoked
*
* Current smoker:
*   current age - age started
*
* Former smoker:
*   current age - age started - years since quit
*------------------------------------------------------------

gen years_smoked = agep_a - smkage_a - quit_years if smkev_a == 1 & inrange(smkage_a, 6, 95)

replace years_smoked = . if years_smoked < 0

* Pack-years

gen packyears = (avg_cigs_day / 20) * years_smoked if smkev_a == 1

tab packyears, missing
summ packyears, detail


* Indicator for >=20 pack-years. Everyone without observed >=20 pack-years is initially coded 0,
gen pack_year_20 = 0
replace pack_year_20 = 1 if packyears >= 20 & packyears != .


* Indicator for missing pack-years among ever smokers
gen pack_year_missing = 0
replace pack_year_missing = 1 if smkev_a == 1 & packyears == .

tab pack_year_20, missing
tab pack_year_missing, missing
tab packyears if smkev_a == 1, missing

svyset ppsu [pweight=wtfa_a], strata(pstrat)


*------------------------------------------------------------
* Smoking history for total population
*------------------------------------------------------------

svy: tab smkev_a if agep_a < 55, missing
svy: tab smkev_a if agep_a > 55, missing


*------------------------------------------------------------
* Percent of population with pack-year information missing
*------------------------------------------------------------

svy: tab pack_year_missing if agep_a < 55, missing //1.63% 
svy: tab pack_year_missing if agep_a > 55, missing //2.27% 


*------------------------------------------------------------
* Percent of population with at least a 20 pack-year history
* based on observed pack-year information
*------------------------------------------------------------

svy: tab pack_year_20 if agep_a < 55, missing //9.53% + 1.63*0.3187 = 10.05%
svy: tab pack_year_20 if agep_a > 55, missing //12.69% + 2.27*.4220 = 13.65%


*------------------------------------------------------------
* Among ever smokers WITH observed pack-years:
* proportion with >=20 pack-years
*------------------------------------------------------------

svy: tab pack_year_20 if agep_a < 55 & smkev_a == 1 & packyears != ., missing //31.87%
svy: tab pack_year_20 if agep_a > 55 & smkev_a == 1 & packyears != ., missing //42.20%


*Full smoking-history eligibility: >=20 pack-years AND current smoker / quit <15 years ago
 
gen lcs_eligible = .

replace lcs_eligible = 1 if smkev_a == 1 & packyears >= 20 & packyears < . & quit_years < 15 //Eligible

replace lcs_eligible = 0 if smkev_a == 2 //Never smokers = ineligible

replace lcs_eligible = 0 if smkev_a == 1 & packyears < 20 //Ever smokers with <20 pack-years = ineligible

replace lcs_eligible = 0 if smkev_a == 1 & smknow_a == 3 & quit_years >= 15 & quit_years < . //Former smokers who quit 15+ years ago = ineligible


replace lcs_eligible = 0 if smkev_a == 1 & lcs_eligible == . & !missing(avg_cigs_day) & inrange(smkage_a, 6, 95) & (avg_cigs_day / 20) * (agep_a - smkage_a) < 20 // If maximum possible pack-years is still <20, ineligible (one person affected) 
	
* Missing eligibility among known ever smokers
gen elig_missing = 0
replace elig_missing = 1 if smkev_a == 1 & lcs_eligible == .

svy: tab elig_missing if smkev_a == 1, missing //2.28%


* Percent of total population with eligibility missing
svy: tab elig_missing if agep_a < 55, missing //0.51%
svy: tab elig_missing if agep_a > 55, missing //0.84%



* Percent of complete ever smokers who are eligible
svy: tab lcs_eligible if agep_a < 55 & smkev_a == 1 & lcs_eligible != ., missing //27.96%
svy: tab lcs_eligible if agep_a > 55 & smkev_a == 1 & lcs_eligible != ., missing //31.09%

* Eligible / ineligible / unknown in total population
svy: tab lcs_eligible if agep_a < 55, missing //8.63% + 0.51*.2796 = 8.77% n = 1,013
svy: tab lcs_eligible if agep_a > 55, missing //9.81% + 0.84*0.3109 = 10.07% n = 2,300

list agep_a smkev_a smknow_a smkage_a avgnumcig_a ///
     smkqttp_a smkqtnp_a packyears quit_years ///
     if elig_missing == 1

	 

*------------------------------------------------------------
* Lung cancer screening within past year
*------------------------------------------------------------
gen lcs_screen = .

replace lcs_screen = 0 if ctscanev1_a == 2 //Never had a chest CT = not screened

replace lcs_screen = 0 if ctscanev1_a == 1 & inrange(ctlngwhn1_a, 2, 6) //Most recent chest CT was more than one year ago = not screened

replace lcs_screen = 0 if ctscanev1_a == 1 & ctlngwhn1_a == 1 & ctlngcan1_a == 2 //CT within past year, but not for lung cancer screening = not screened

replace lcs_screen = 1 if ctscanev1_a == 1 & ctlngwhn1_a == 1 & ctlngcan1_a == 1 //CT within past year AND for lung cancer screening = screened


tab lcs_screen if lcs_eligible == 1, missing


* Ages 51-54
svy: tab lcs_screen if agep_a < 55 & lcs_eligible == 1 //8.3% n = 90

* Ages 56-64
svy: tab lcs_screen if agep_a > 55 & lcs_eligible == 1 //20.32% n = 221

