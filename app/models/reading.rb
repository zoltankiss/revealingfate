class Reading < ActiveRecord::Base
  def self.significance_of_your_celestial_element_sign_text(element)
    if element.match(/Yin/)
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
    elsif element.match(/Yang/)
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
    end
  end
end
