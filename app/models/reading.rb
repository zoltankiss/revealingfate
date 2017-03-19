class Reading < ActiveRecord::Base
  def self.significance_of_your_celestial_element_sign_text(element)
    if element == 'Yang Water'
<<-HEREDOC
You are born with the Yang Water sign (Day Master)—the equivalent of the
great river, vast ocean, or magnificent falls. Yang Water is particularly
effective at dissipating the staunchness of Yang Metal, and at squelching the
intensity of Yang Fire. It is powerful, ever-moving, and fluid. You are
persistent, unyielding, and coolly assuring at your best; uncaring, reckless,
and impatient when at your worst. In all instances you are swift.

To foster healthy relationships, you need to allow others to disrupt your
routines, motivation, and drive. Understand the nature of rivers and oceans:
the crucial vessels which harbor and sustain delicate life may also destroy it
when the riptide is unleashed—causing disaster and a trail of destruction in
its path; yet when they are insufficient life cannot sustain altogether. You need
to take a step back, stop constantly moving in different directions or too fast,
and live in the present. Keep in mind that when torrents become never-ending
streams you will feel deplete, stagnant, insignificant, and attract wrongful
intentions.
HEREDOC
    elsif element == 'Yin Metal'
<<-HEREDOC
Yin Metal does not discriminate as overtly as Yang Metal cuts like weaponry,
however it does not need to; its strength lies in … without being
unintentionally stoic or apathetic. Yin Metal is particularly effective at
transforming the solidity/splendor/majesty of Yang Earth, and at trimming
the tenacity of Yin Wood.

…at your worst you are uncompromising, guarded… In all instances you are
unyielding.
HEREDOC
    elsif element == 'Yang Metal'
<<-HEREDOC
You are born with the Yang Metal sign (Day Master)—the equivalent of a
devastating sword. Yang Metal does not clarify as subtly as Yin Metal
distinguishes like ornamentation, however it does not need to; its strength lies
in emboldening discernment to those seeking or in need of it without being
unintentionally malleable or reserved. Yang Metal is particularly effective at
transforming the receptiveness of Yin Earth, and at hewing the intricacy of
Yang Wood. You are honest, straightforward, honorable, and fair
at your best; abrasive, discriminatory, crude, and skeptical when at your
worst. In all instances you are resolute.

To foster healthy relationships, you need to scale back on evaluating every
person and thing that comes your way in a black-and- white manner. Consider
the sword as both a protector and destructor, wherein always resolute: with
Fire it is forged and with Water it is polished; yet when over-nourished from
Earth its ore is stiff and brittle. Having a dualistic vantage of both ideology and
practicality often divides, reduces, and repels where it is not
intended—unfazed by propositions of authority. A sharp wit is only so good as
it is not demeaning or discouraging, and adornment serves its beholder only
when it does not polarize.
HEREDOC
    elsif element == 'Yang Earth'
<<-HEREDOC
You are born with the Yang Earth sign (Day Master)—the equivalent of a
mighty mountain or the magnificent highlands. The Earth element lies at the
center of all elements (Five Phases): when there is Fire for warmth and Water
to nourish, all things grow upon it; when it is dry so life too will wilt and be
barren; and with too much Water sickness accumulates. Yang Earth is both
strong and stable, and it is particularly effective at quelling Yin Fire and
obstructing Yang Water. You are nurturing, considerate, and strong at heart
when at your best; grudging, immobilized, and unwilling to accept change
when at your worst. In all instances you are solid.

To foster healthy relationships, you need to respect yourself and establish
boundaries and limitations for people seeking your care so that you do not
stretch yourself too thin (and therefore fall short or accomplish nothing
altogether). The Earth element is the crucial element needed as a medium in
which all other elements can phase and carry out: when there is Fire for
warmth and Water to nourish, all things grow upon it; when the Earth is dry
so too will life wither, and when it is wet sickness will spread. Sometimes your
tendency to give generously earns you scorn instead of gratitude. Never forget
that balance is key when deciding on what you can do with greater
control—never taking on too much or too little.
HEREDOC
    elsif element == 'Yin Earth'
<<-HEREDOC
You’re are born into this world from the heavens with the Yin Earth sign (Day
Master)—the equivalent of the fertile soil, plentiful fields, or abundant patty.
Yin Earth is the most nurturing of all the elements, and it allows all things to
grow. Yin Earth is particularly effective at extinguishing Yang Fire and
impeding Yin Water. You are giving, sensitive, and grounded when at your
best; stubborn, dredging, and obstructive when at your worst. In all instances
you are convicted.

To foster healthy relationships, you need to let things seed into you; time and
patience are required for personal development. Observe the dynamic
between all living things and the absorbent, fertile soil: without the essential
medium for all of the Five Phases there exists no balance. You should be aware
that you have a tendency to retain your emotions until the threshold is
broken, creating sudden outbursts and brashness. Always keep an open mind
towards all things, listening to people and signs that surround you in order to
effectively communicate with all involved parties so as a consensus can be
reached.
HEREDOC
    elsif element == 'Yang Fire'
<<-HEREDOC
You’re are born into this world from the heavens with the Yang Fire sign (Day
Master)—the equivalent of the blazing Sun. Yang Fire does not burn as softly
as Yin Fire flickers like lamplight, however it does not need to; its strength lies
in providing intimate exchange to those seeking or in need of it without being
unintentionally soft or left wanting (originally: distant or impartial).
You are bright, warm, nurturing, and when at your best; hot, dry, and invasive when
at your worst. In all instances you are intense.

To foster healthy relationships, you need to value the role of distance between
yourself and others in a balanced way. Observe the dynamic between our Sun
and Earth: if the Sun gets too close life dries up; if too far from the Earth life
freezes over, unable to grow and thrive. You should be aware that you have a
tendency to project your presence and enforce your ideals unto others.
Always remind yourself that all things grow at different paces and make a
meaningful effort with exercising patience.
HEREDOC
    elsif element == 'Yin Fire'
<<-HEREDOC
You are born with the Yin Fire sign (Day Master)—the equivalent of the
luminous lamplight. Yin Fire does not shine as brightly as Yang Fire gleams
like the sun, however it does not need to; its strength lies in providing
intimate exchange to those seeking or in need of it without being
unintentionally invasive or abrasive. You are
caring, relatable, empathic, and gentle at your best; indecisive,
yielding, and vacillated when at your worst. In all instances you are intent.

To foster healthy relationships, you need to value the role of internal drive
and momentum in a balanced way. Observe the dynamic between a flame and
the light that illuminates from it; a hearth and the room filled by its warmth:
guidance may easily transform into blindness with a flame too bright; drive
may easily become obsession with warmth too intense. Inertia has the ability
to go awry. Among your friends and in your social life, provide warm and kind
suggestions without overbearing. Always remind yourself that boundaries
exist and be strive for assuredness in overcoming your challenges.
HEREDOC
    else
      ''
    end
  end
end
