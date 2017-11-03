User.destroy_all
Organization.destroy_all
Administrator.destroy_all

#Flatiron
flatiron = Organization.create(name: 'Flatiron School')

admin = Administrator.create(first_name:'Flatiron', last_name:'Administrator', email:'admin@flatiron.com', organization: flatiron, password: 'flatiron')
sam = Administrator.create(first_name:'Sam', last_name:'Johnson', email:'sam.johnson@flatiron.com', organization: flatiron, password: 'flatiron')
lindsey = Administrator.create(first_name:'Lindsey', last_name:'Walters', email:'lindsey.walters@flatiron.com', organization: flatiron, password: 'flatiron')
evelyn = Administrator.create(first_name:'Evelyn', last_name:'Parnell', email:'evelyn.parnell@flatiron.com', organization: flatiron, password: 'flatiron')

all_admin = [admin, sam, lindsey, evelyn]

User.create(first_name:'Hong', last_name:'Litzau', email:'uncowl@reconverse.net', organization: flatiron)
User.create(first_name:'Torri', last_name:'Jedan', email:'transplace@ursoid.co.uk', organization: flatiron)
User.create(first_name:'Mason', last_name:'Noordam', email:'maritorious@whistling.org', organization: flatiron)
User.create(first_name:'Kerry', last_name:'Dela', email:'benzalaniline@wumble.co.uk', organization: flatiron)
User.create(first_name:'Jacquelin', last_name:'Sampica', email:'clave@uninterestingly.com', organization: flatiron)
User.create(first_name:'Sal', last_name:'Kantis', email:'atropidae@refragableness.com', organization: flatiron)
User.create(first_name:'Elbert', last_name:'Bickerton', email:'staurolitic@ramfeezled.com', organization: flatiron)
User.create(first_name:'Gwenda', last_name:'Langman', email:'emphyteutic@remembrancer.co.uk', organization: flatiron)
User.create(first_name:'Coretta', last_name:'Fishel', email:'shepherd@barthite.com', organization: flatiron)
User.create(first_name:'Senaida', last_name:'Zaza', email:'unjarred@unhearing.edu', organization: flatiron)
User.create(first_name:'Jose', last_name:'Kurpiel', email:'effervescence@disappointer.net', organization: flatiron)
User.create(first_name:'Lovie', last_name:'Schimke', email:'unpulverable@drainless.com', organization: flatiron)
User.create(first_name:'Tameka', last_name:'Dupee', email:'slicer@utch.com', organization: flatiron)
User.create(first_name:'Kathy', last_name:'Zane', email:'ignorer@landlooker.com', organization: flatiron)
User.create(first_name:'Heath', last_name:'Briand', email:'inseparably@answeringly.org', organization: flatiron)
User.create(first_name:'Keira', last_name:'Kasprak', email:'archmugwump@l.org', organization: flatiron)
User.create(first_name:'Shayla', last_name:'Goldstein', email:'horological@borsholder.com', organization: flatiron)
User.create(first_name:'Velma', last_name:'Maire', email:'sulu@housemotherly.com', organization: flatiron)
User.create(first_name:'Angelique', last_name:'Oblinski', email:'permonosulphuric@imonium.edu', organization: flatiron)
User.create(first_name:'Angelina', last_name:'Schurkamp', email:'belittle@mutableness.edu', organization: flatiron)
User.create(first_name:'Vance', last_name:'Laduke', email:'albinotic@parthenocarpical.net', organization: flatiron)
User.create(first_name:'Mandie', last_name:'Malinchalk', email:'representationalist@reclass.com', organization: flatiron)
User.create(first_name:'Ardis', last_name:'Arbeiter', email:'fricandel@grapewise.co.uk', organization: flatiron)

#Teams
club_team = EvaluationCategory.create(name: 'Club Team Members', organization: flatiron)
corp_team = EvaluationCategory.create(name: 'Corporate Team Members', organization: flatiron)
managers = EvaluationCategory.create(name: 'Managers, Sr. Managers, Directors', organization: flatiron)
vps = EvaluationCategory.create(name: 'Sr. Directors, VPs, SVPs, EVPs', organization: flatiron)

all_teams = [club_team, corp_team, managers, vps]

all_teams.each do |team|
  PossiblePoint.create(score: 1, description: 'BELOW EXPECTATIONS - DOES NOT CONSISTENTLY DEMONSTRATE ANY BEHAVIOR(S) ', evaluation_category: team)
  PossiblePoint.create(score: 2, description: 'UNSATISFACTORY - DEMONSTRATES SOME, BUT NOT ALL BEHAVIOR(S) WITH CONSISTENCY', evaluation_category: team)
  PossiblePoint.create(score: 3, description: 'MEETS EXPECTATIONS - DEMONSTRATES ALL BEHAVIOR(S) WITH CONSISTENCY', evaluation_category: team)
  PossiblePoint.create(score: 4, description: 'EXCEEDS EXPECTATIONS - DEMONSTRATES ALL BEHAVIOR(S) WITH EXCEPTIONAL PERFORMANCE', evaluation_category: team)
end

#Values
  #ClubTeam
    know_role_club = EvalItem.create(name: 'Know the Role', description: 'Performs job responsibilities effectively, demonstrates relevant business knowledge', organization: flatiron, evaluation_category: club_team)
    communicate_club = EvalItem.create(name: 'Communicate', description: 'Communicates clearly, respectfully, and in a timely manner', organization: flatiron, evaluation_category: club_team)
    collaborate_club = EvalItem.create(name: 'Collaborate', description: 'Works well with others, displays commitment to the success of all team members', organization: flatiron, evaluation_category: club_team)
    service_focus_club = EvalItem.create(name: 'Service Focus', description: 'Anticipates and responds quickly to member needs', organization: flatiron, evaluation_category: club_team)
  #CorpTeam
    know_role_corp = EvalItem.create(name: 'Know the Role', description: 'Performs job responsibilities successfully, demonstrates relevant knowledge of the business', organization: flatiron, evaluation_category: corp_team)
    communicate_corp = EvalItem.create(name: 'Communicate', description: 'Communicates clearly, respectfully, and in a timely manner', organization: flatiron, evaluation_category: corp_team)
    collaborate_corp = EvalItem.create(name: 'Collaborate', description: 'Collaborates cross-functionally to achieve objectives. Displays commitment to the success of peers and direct reports', organization: flatiron, evaluation_category: corp_team)
    drive_results_corp = EvalItem.create(name: 'Drive For Results', description: 'Demonstrates a results focus, overcomes challenges to consistently execute objectives', organization: flatiron, evaluation_category: corp_team)
    embrace_change_corp = EvalItem.create(name: 'Embrace Change', description: 'Embraces change as normal by adapting behavior, plans, and approach accordingly', organization: flatiron, evaluation_category: corp_team)
    innovate_corp = EvalItem.create(name: 'Innovate', description: 'Generates solutions, ideas, and/or resources to solve problems or meet business needs', organization: flatiron, evaluation_category: corp_team)
  #Managers
    know_role_man = EvalItem.create(name: 'Know the Role', description: 'Performs job responsibilities effectively, factors financial implications into business decisions', organization: flatiron, evaluation_category: managers)
    communicate_man = EvalItem.create(name: 'Communicate', description: 'Communicates clearly, respectfully, and in a timely manner. Uses facts and analysis to influence', organization: flatiron, evaluation_category: managers)
    collaborate_man = EvalItem.create(name: 'Collaborate', description: 'Collaborates cross-functionally to achieve objectives. Displays commitment to the success of peers and direct reports', organization: flatiron, evaluation_category: managers)
    drive_results_man = EvalItem.create(name: 'Drive For Results', description: 'Leads efforts to increase productivity, overcomes challenges to consistently execute objectives', organization: flatiron, evaluation_category: managers)
    innovate_man = EvalItem.create(name: 'Innovate', description: 'Generates solutions, ideas, and/or resources to solve problems or meet business needs, leads team to do the same', organization: flatiron, evaluation_category: managers)
    lead_change_man = EvalItem.create(name: 'Lead Change', description: 'Sets the example by embracing change as normal. Champions change efforts with team to inspire adoption', organization: flatiron, evaluation_category: managers)
    strategic_ability_man = EvalItem.create(name: 'Strategic Ability', description: 'Builds strategy that aligns with long & short terms business needs. Plans for successful execution', organization: flatiron, evaluation_category: managers)
    build_teams_man = EvalItem.create(name: 'Build High Performing Teams', description: 'Attracts top talent and builds a bench to ensure key roles remain filled. Creates a positive work climate that inspires commitment', organization: flatiron, evaluation_category: managers)
    coach_man = EvalItem.create(name: 'Coaches & Develops', description: 'Develops team through real-time coaching and feedback. Provides learning, growth and development opportunities', organization: flatiron, evaluation_category: managers)
  #VPs
    know_role_vp = EvalItem.create(name: 'Know the Role', description: 'Improves the business through functional expertise, applies financial acumen to business management', organization: flatiron, evaluation_category: vps)
    communicate_vp = EvalItem.create(name: 'Communicate', description: 'Communicates clearly, respectfully, and in a timely manner. Uses facts and analysis to influence', organization: flatiron, evaluation_category: vps)
    collborate_vp = EvalItem.create(name: 'Collaborate', description: 'Collaborates cross-functionally to achieve objectives. Displays commitment to the success of peers and direct reports', organization: flatiron, evaluation_category: vps)
    drive_results_vp = EvalItem.create(name: 'Drive For Results', description: 'Leads efforts to increase productivity, overcomes challenges to consistently execute objectives', organization: flatiron, evaluation_category: vps)
    innovate_vp = EvalItem.create(name: 'Innovate', description: 'Generates solutions, ideas, and/or resources to solve problems or meet business needs, leads team to do the same', organization: flatiron, evaluation_category: vps)
    lead_change_vp = EvalItem.create(name: 'Lead Change', description: 'Ensures the organization has the skills and resources to change. Champions change efforts', organization: flatiron, evaluation_category: vps)
    strategic_ability_vp = EvalItem.create(name: 'Strategic Ability', description: 'Develops a clear vision for the organization and addresses core issues to successful execution', organization: flatiron, evaluation_category: vps)
    build_teams_vp = EvalItem.create(name: 'Build High Performing Teams', description: 'Build strong teams whose members have complementary strengths. Creates a positive culture that boosts employee investment in the organization', organization: flatiron, evaluation_category: vps)
    coach_vp = EvalItem.create(name: 'Coaches & Develops', description: 'Develops team through real-time coaching and feedback. Provides learning, growth and development opportunities Places an emphasis on developing future leaders.', organization: flatiron, evaluation_category: vps)

all_values = [know_role_club, communicate_club, collaborate_club, service_focus_club, know_role_corp, communicate_corp, collaborate_corp, drive_results_corp, embrace_change_corp, innovate_corp, know_role_man, communicate_man, collaborate_man, drive_results_man, innovate_man, lead_change_man, strategic_ability_man, build_teams_man, coach_man, know_role_vp, communicate_vp, collborate_vp, drive_results_vp, innovate_vp, lead_change_vp, strategic_ability_vp, build_teams_vp, coach_vp]

all_users = User.all

500.times do
  Score.create(user: all_users.sample, eval_item: all_values.sample, administrator: all_admin.sample, score: [1,2,3,4].sample, note: '-')
end

#Subway
# subway = Organization.create(name: 'Subway')

# Administrator.create(first_name:'Linette', last_name:'Shelman', email:'lacrym@magnipotent.org', organization: subway, password: '123')
# User.create(first_name:'Micki', last_name:'Maaske', email:'phascaceous@vectorial.com', organization: subway)
# User.create(first_name:'Levi', last_name:'Vandenberge', email:'wye@astomous.org', organization: subway)
# User.create(first_name:'Morris', last_name:'Imbesi', email:'zeuglodont@polygram.org', organization: subway)
# User.create(first_name:'Lee', last_name:'Garzia', email:'unwinter@acrologue.edu', organization: subway)
# User.create(first_name:'Jin', last_name:'Madarang', email:'unsystemizable@pinchingly.org', organization: subway)
# User.create(first_name:'Spring', last_name:'Turkmay', email:'crystallogen@hierarchy.co.uk', organization: subway)
# User.create(first_name:'Golda', last_name:'Colas', email:'harder@rhizocarpean.org', organization: subway)
# User.create(first_name:'Maggie', last_name:'Webre', email:'appropriative@balaniferous.com', organization: subway)
# User.create(first_name:'Charlyn', last_name:'Holladay', email:'lockless@rebridge.net', organization: subway)
# User.create(first_name:'Hershel', last_name:'Schwieger', email:'inaccessible@sympathico.co.uk', organization: subway)
# User.create(first_name:'Elfriede', last_name:'Fleischer', email:'quattie@silicotitanate.edu', organization: subway)
# User.create(first_name:'Lucienne', last_name:'Coreas', email:'thalloid@chakazi.com', organization: subway)
# User.create(first_name:'Candis', last_name:'Loehner', email:'becloud@chamacea.com', organization: subway)
# User.create(first_name:'Celsa', last_name:'Fahrendorff', email:'incurability@fraternally.edu', organization: subway)
# User.create(first_name:'Monnie', last_name:'Iriarte', email:'fernland@amphithyron.net', organization: subway)
# User.create(first_name:'Brant', last_name:'Boudreaux', email:'aquintocubitalism@quind.co.uk', organization: subway)
# User.create(first_name:'Edwardo', last_name:'Middlesworth', email:'uncognized@bilati.com', organization: subway)
# User.create(first_name:'Jerry', last_name:'Toxey', email:'portreeve@dorlot.co.uk', organization: subway)
# User.create(first_name:'Rick', last_name:'Ostling', email:'discharacter@oppositionist.com', organization: subway)