#!/bin/csh -f
#
# diogenis data file and installation utility
#
# Copyright (C) 1998-2015 Nicholas Christopoulos (nereus@freemail.gr)
#
# This program and its data-file is free software: you can redistribute
# it and/or modify it under the terms of the GNU General Public License 
# as published by the Free Software Foundation, either version 3 of
# the License, or any later version.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# data-file version: 1.2 - 2015-12-26
#

# destination directory
set data=/usr/share/games/fortunes

#
set todo = install
if ( $#argv > 0 ) then
	set todo = $argv[1]
endif

#
switch ( $todo )
case install:
	echo installing diogenis fortune file...
	
	# create data file
	$0 print > ${data}/diogenis
	chmod 0644 ${data}/diogenis
	echo \"${data}/diogenis\" created

	# create fortune's .dat file
	strfile ${data}/diogenis

	echo testing...
	fortune diogenis
	
	echo run \'fortune diogenis\' for more famous quotes
	echo \* done \*
	breaksw

case test:
	fortune diogenis
	breaksw
	
case print:
	cat <<EOF
Δημόκριτος:

        "Ο λόγος είναι σκιά του έργου"

%
Δημόκριτος:

    "Όποιος προτιμά τα αγαθά της ψυχής προτιμά τα πιο θεϊκά
        όποιος προτιμά τα αγαθά του σώματος προτιμά τα ανθρώπινα"

%
Δημόκριτος:

    "Όποιος νικιέται από τα χρήματα είναι αδύνατο
        να γίνει ποτέ δίκαιος"
%
Δημόκριτος:

    "Όποιος προσπαθεί να νουθετήσει εκείνον ο οποίος νομίζει
        ότι έχει νου ματαιοπονεί"

%
Δημόκριτος:

    "Οι ανόητοι συνετίζονται με τις δυστυχίες"

%
Δημόκριτος:

    "Ούτε τέχνη, ούτε σοφία είναι εφικτή για κάποιον αν δεν την διδαχτεί"

%
Δημόκριτος:

    "Οι ηδονές την στιγμή που δεν πρέπει, γεννούν στενοχώριες"

%
Δημόκριτος:

    "Οι έντονες εποθυμίες ενος συγκεκριμένου πράγματος
        κάνουν την ψυχή τυφλή ως προς τα υπόλοιπα"

%
Δημόκριτος:

    "Αιτία των λαθών είναι ότι αγνοούμε το καλύτερο"

%
Δημόκριτος:

    "Το να λες τα πάντα και να μη θέλεις ν' ακούς τίποτα είναι πλεονεξία"

%
Δημόκριτος:

    "Όποιος φθονεί προκαλεί θλίψη στον εαυτό του σαν να τον εχθρεύεται"

%
Δημόκριτος:

    "Οι μικρές ευεργεσίες την κατάλληλη στιγμή είναι τεράστιες 
        για εκείνους που τις δέχονται"

%
Δημόκριτος:

    "Στα πάντα το ωραίο είναι το ίσο, δεν θεωρώ όμως 
        σωστή ούτε την υπερβολή ούτε την έλλειψη"

%
Δημόκριτος:

    "Όσοι επαινούν τους ανόητους τους βλάπτουν πολύ"

%
Δημόκριτος:

    "Οι άνθρωποι δημιούργησαν νοητική εικόνα της τύχης για να 
        δικαιολογήσουν την δική τους ακρισία"

%
Δημόκριτος:

    "Το ψάρι που μοιράζεσαι με τον άλλο, δεν έχει κόκαλα"

%
Δημόκριτος:

    "Η ζωή χωρίς αρετή, φρόνηση και σωφροσύνη δεν είναι κακή ζωή 
        αλλά θάνατος που διαρκεί πολύ"

%
Δημόκριτος:

    "Η παιδεία είναι στολίδι για τους ευτυχισμένους και καταφύγιο
        για τους δυστυχισμένους"

%
Δημόκριτος:

    "Όταν ένα ζώο χρειάζεται κάτι, 
        ξέρει πόση είναι η ανάγκη του,
    ενώ, όταν χρειάζεται ένας άνθρωπος, 
        δεν ξέρει"

%
Δημόκριτος:

    "Οι ανόητοι επιθυμούν την μακροβιότητα, 
        αν και η μακροβιότητα δεν τους ευχαριστεί"

%
Δημόκριτος:

    "Οι άνθρωποι προσπαθώντας να αποφύγουν τον θάνατο, 
        τον επιδιώκουν"

%
Δημόκριτος:

    "Η αυτάρκεια ουδέποτε γίνετε τροφή μικρής νύχτας"

%
Δημόκριτος:

    "Η σωφροσύνη αυξάνει τα ευχάριστα και μεγαλώνει την απόλαυση"

%
Δημόκριτος:

    "Η ανδρεία κάνει τις συμφορές μικρότερες"

%
Δημόκριτος:

    "Η επιθυμία για χρήματα, 
        αν δεν περιοριστεί από την ικανοποίησή της,
    είναι πολύ χειρότερη από την έσχατη φτώχεια, 
        γιατί 
    οι μεγαλύτερες επιθυμίες 
    δημιουργούν μεγαλύτερες ανάγκες"

%
Δημόκριτος:

    "Η συγκέντρωση πολλών χρημάτων για τα παιδιά 
        είναι πρόφαση φιλαργυρίας,
    η οποία ασκεί έλεγχο στον δικό της χαρακτήρα"

%
Δημόκριτος:

    "Όσα χρειάζεται το σώμα, μπορούν να τα έχουν όλοι εύκολα χωρίς κόπο
        και ταλαιπωρία. 
    όσα όμως απαιτούν κόπο και ταλαιπωρία και προκαλούν
        στενοχώρια στη ζωή 
    αυτά δεν τα επιθυμεί το σώμα αλλά 
        η άσχημα συγκροτημένη γνώση"

%
Δημόκριτος:

    "Η επιθυμία για το περισσότερο καταστρέφει και αυτό που έχουμε"

%
Δημόκριτος:

    "Οι φιλάργυροι/τσιγκούνιδες έχουν την μοίρα της μέλισσας,
        δουλεύοντας σαν να πρόκειται να ζήσουν για πάντα"

%
Δημόκριτος:

    "Ζωή χωρίς γιορτές είναι μακρύς δρόμος χωρίς πανδοχεία"

%
Δημόκριτος:

    "Σωστή κρίση διαθέτει αυτός που δεν λυπάται για όσα δεν έχει
        αλλά χαίρεται όσα έχει"

%
Δημόκριτος:

    "Ο συνεχής κόπος γίνεται ολοένα ελαφρύτερος από την συνήθεια"

%
Δημόκριτος:

    "Ακόμα και αν είσαι μόνος να μην πεις και να μην κάνεις τίποτα κακό.
        Μάθε να σέβεσαι στον εαυτό σου πιο πολύ από ότι τους άλλους"

%
Δημόκριτος:

    "Ο σοφός άνδρας μπορεί να πάει σε κάθε τόπο, γιατί πατρίδα της
        ενάρετης ψυχής είναι όλος ο κόσμος"

%
Δημόκριτος:

    "Η πείνα στο δημοκρατικό πολίτευμα είναι τόσο προτιμότερη από τη
        λεγόμενη ευδαιμωνία των δυναστικών πολιτευμάτων
     όσο η ελευθερία απο τη δουλεία"

%
Δημόκριτος:

    "Η πόλη που διοικείται σωστά (δημοκρατίκα) είναι η μεγαλύτερη προστασία
        και σ' αυτή έγκειται τον παν"

%
Δημόκριτος:

    "Οι άνθρωποι θυμούνται περισσότερο τις κακές πράξεις παρά τις καλές"

%
Δημόκριτος:

    "Τα λίγα λόγια είναι στολισμός για την γυναίκα,
        ενώ ωραία είναι και η λιτότητα του στολισμού"

%
Δημόκριτος:

    "Η φτώχια και ο πλούτος είναι ονόματα που σημαίνουν
        την ανάγκη και τον χορτασμό. 
    Δεν είναι πλούσιος αυτός που έχει ανάγκες
        ούτε φτωχός αυτός που δεν έχει"

%
Δημόκριτος:

    "Οι μικρές επιθυμίες (ολιγάρκεια) κάνουν την φτώχια ισοδύναμη
        με τον πλούτο"

%
Δημόκριτος:

    "Ευτυχισμένος είναι όποιος αισθάνεται γαλήνη με τα λίγα χρήματα,
        ενώ δυστυχισμένος είναι όποιος δεν ευχαριστιέται ούτε με τα πολλά"

%
Δημόκριτος:

    "Πρέπει με κάθε τρόπο να σκοτώνει κανείς κάθε τι που παραβιάζει 
        την δικαιωσύνη και βλάπτει.
    Και όποιος εφαρμόζει αυτή την αρχή θα έχει σε κάθε καθεστώς 
        μεγαλύτερο μερίδιο στην ευτυχία, στη δικαιωσύνη, 
        στο θάρρος και στην περιουσία"

%
Δημόκριτος:

    "Όσα στραβά υπάρχουν σ' εμάς τα δημιούργησε η ανισότητα"

    "Αντίθετα όσα έχουν την κατάλληλη τάξη είναι έργο της ισότητας
    Αυτή κυριολεκτικά αποτελεί τον κόσμο σε κάθε τι που υπάρχει,
    ενώ στα κράτη είναι βάθρο του πιο δίκαιου και καλύτερου καθεστώτος,
    της δημοκρατίας"

%
Δημόκριτος:

    "Η ισότητα επίσης δημιουργεί την υγεία τους σώματος
        και την καλοκαγαθία της ψυχής"

%
Δημόκριτος:

    "Γιατί πραγματικά η ανισότητα ανέκαθεν ήταν και είναι 
        πηγή ασθενειών και κακών"

%

Η ικανότητα του Διογένη στο να πείθει ήταν αξιοθαύμαστη,
μπορούσε πολύ εύκολα στις συζητήσεις να αναιρέσει οποιαδήποτε άποψη.

Λένε ότι ο Αιγινήτης Ονησίκριτος, είχε δύο ιούς και έστειλε τον ένα, 
τον Ανδροσθένη, στην Αθήνα.
Αυτός άκουσε τον Διογένη και έμεινε εκεί.
Ο Ονησίκριτος, έστειλε τον άλλο του γιο, τον Φιλίσκο,
που ήταν μεγαλύτερος να φέρει πίσω τον αδερφό του.
Όμως ο Φιλίσκος μαγεύτηκε από τα λόγια του Διογένη κι έμεινε στην Αθήνα.
Τότε ο πατέρας πήγε ο ίδιος να βρει τα παιδιά τους, 
αλλά και αυτός γοητεύτηκε από τα λόγια του Διογένη και έμεινε στην Αθήνα
και ασχολήθηκε με την φιλοσοφία.
                -- Λαέρτιος, 6.75
%
Διογένης:

    θεωρούσε ώς χείριστο κακό την φιλαργυρία,
        και ως υπέρτατο καλό την φιλοσοφία. 

                -- Λαέρτιος, 6.23
%
Ο Διογένης ήταν γιός του τραπεζίτη Ικέσιου από την Σινώπη(1).
Ο πατέρας του(2) κατηγορήθηκε για παραχάραξη δημόσιου χρήματος.
Γι' αυτό το λόγο και οι δύο εξορίστηκαν, κατά άλλους ο πατέρας του 
καταδικάστηκε και θανατώθηκε.

(1) Πόλη στα παράλια του Εύξυνου Πόντου.
(2) 'Η κατά άλλους ο ίδιος.
%
Διογένης:

Όταν έφτασε στην Αθήνα, γνώρισε τον Αντισθενη.
Εκείνος τον έδιωχνε γιατί δεν δεχόταν κανένα μαθητή αλλά ο Διογένης
επέμενε.  Κάποια στιγμή ο Αντισθένης προσπάθησε να τον διώξει με κάποιο
ξύλο και ο Διογένης του είπε:

        "Δεν θα βρείς ξύλο αρκετά σκληρό για να με διώξεις 
                                        όσο ο λόγος σου έχει αξία"

Από τότε έγινε μαθητής του Αντισθένη.
                -- Λαέρτιος, 6.21
%
Διογένης:

Στην Αθήνα, όταν έφτασε, είχε ένα δούλο, τον Μάνη.
Ο Μάνης σύντομα το έσκασε (προφανώς δεν άντεχε την ασκητική ζωή του 
κυρίου του). Όταν οι Αθηναίοι τον ρώτησαν γιατί δεν τον αναζήτησε, 
ο Διογένης απάντησε¨:

        "Θα ήταν γελοίο αν ο Μάνης μπορεί να ζήσει χωρίς τον Διογένη,
                ο Διογένης να μη μπορεί να ζήσει χωρίς τον Μάνη"

                -- Λαέρτιος 6.55
%
Διογένης:

Βλέποντας ένα ποντίκι να τρέχει και να μην αναζητεί κρυψώνα 
ούτε να φοβάται το σκοτάδι ούτε να επιθυμεί τίποτε από αυτά 
που θεωρούνται απολαύσεις, 
αντιλήφθηκε τα κοινά στοιχεία που είχε με τη δική του ζωή.

                -- Λαέρτιος, 6.22
%
Διογένης:

Δείχνοντας τη στοά του Δία και το Πομπείο έλεγε πως 
γι' αυτόν το είχαν κατασκευάσει οι Αθηναίοι, 
για να κατοικεί εκεί.

                -- Λαέρτιος, 6.22
%
Διογένης:

Έλεγε πως ακολουθεί το παράδειγμα των χοροδιδασκάλων (χορωδία) 
που συνήθως δίνουν εντονότερο τόνο για να καθοδηγήσουν τους υπόλοιπους.

                -- Λαέρτιος, 6.35
%
Διογένης:

Συνήθιζε να λέει πως οι κατάρες στις τραγωδίες γράφτηκαν γι' αυτόν 
γιατί ήταν:

Χωρίς πόλη, χωρίς σπίτι, στερημένος από πατρίδα, φτωχός, περιπλανώμενος,
με εξασφαλισμένο το φαΐ μόνο μιας μέρας.

                -- Λαέρτιος, 6.38
%
Διογένης:

Όταν είδε ένα παιδί να πίνει από την χούφτα του νερό, πέταξε απο το 
σακούλι του το κύπελο και είπε 

        "ένα παιδί με ξεπέρασε σε απλότητα"

                -- Λαέρτιος, 6.36
%
Διογένης:

Όταν κάποιος μακάριζε τον Καλλισθένη και έλεγε πόσες πολυτέλειες 
απολαμβάνει κοντά στον Αλέξανδρο, είπε 

        "Είναι δυστυχισμένος, αφού τρώει όποτε κάνει κέφι ο Αλέξανδρος"

                -- Λαέρτιος, 6.45
%
Διογένης:

Είχε γράψει σε κάποιον να φροντίσει να του εξασφαλίσει μέρος για 
κατοικία και επειδή αργούσε, 
έκανε σπίτι του το πιθάρι που βρισκόταν στο Μητρώο.

                -- Λαέρτιος, 6.23
%
Διογένης:

Οι Αθηναίοι τον αγαπούσαν γι' αυτό όταν ένας νεαρός του έσπασε το 
πιθάρι, μαστίγωσαν τον νεαρό και έδωσαν άλλο στο Διογένη.

                -- Λαέρτιος, 6.43
%
Διογένης:

Άναψε λυχνάρι την ημέρα και είπε "ζητώ άνθρωπο".

                -- Λαέρτιος, 6.41
%
Διογένης:

Έλεγε ότι στην τύχη αντιστεκόταν με θάρρος, στον νόμο με τη φύση, 
                                                στα πάθη με τη λογική.

                -- Λαέρτιος, 6.38
%
Διογένης:

Χωρίς εξάσκηση τίποτε δεν μπορούμε να καταφέρουμε, ενώ με την εξάσκηση
μπορεί να ξεπεραστεί κάθε εμπόδιο. Πρέπει λοιπόν να επιλέγουμε όχι τους
άχρηστους κόπους, αλλά αυτούς 
που επιβάλει η φύση για να ζούμε ευτυχισμένα. 

Οι άνθρωποι δυστυχούν εξαιτίας της ανοησίας τους. 
Όμως και η περιφρόνηση της ίδιας της ηδονής, όταν είναι συνειδητή 
επιλογή, μπορεί να είναι κάτι πολύ ευχάριστο. 
Όπως αυτοί που έχουν συνηθίσει να ζουν με ηδονές, ενοχλούνται 
από την έλλειψη τους, έτσι κι αυτοί που έχουν συνηθίσει στον αντίθετο
τρόπο ζωής, περιφρονούν τις ηδονές.

                -- Λαέρτιος, 6.71
%
Διογένης:

Το καλοκαίρι κυλιόταν πάνω σε ζεστή άμμο και το χειμώνα αγκάλιαζε
παγωμένα αγάλματα, εξασκώντας με κάθε τρόπο και για κάθε περίπτωση 
τον εαυτό του.

                -- Λαέρτιος, 6.23
%
Διογένης:
Όταν κάποτε επρόκειτο να πουληθεί ως δούλος στην Κρήτη...

Ρωτήθηκε τι ξέρει να κάνει,
        "Ανδρών αρχείν" (Ξέρω να εξουσιάζω) είπε,
και προς τον δουλέμπορο είπε:
        "Φώναξε μήπως κάποιος θέλει δεσπότη".

%
Διογένης:
Όταν κάποτε επρόκειτο να πουληθεί ως δούλος στην Κρήτη...

Ο δουλέμπορος μη αφήνοντάς τον να καθίσει, του είπε:

        "Δεν έχει σημασία γιατί 
                και τα ψάρια όπως και να στέκονται το ίδιο πωλούνται"

                -- Λαέρτιος, 6.29
%
Διογένης:

Στον Κορίνθιο Ξενιάδη, που τον αγόρασε, είπε πως πρέπει να τον υπακούει,
γιατί σε ένα γιατρό ή κυβερνήτη ακόμα κι αν είναι δούλος, 
πρέπει να υπακούμε.

                -- Λαέρτιος, 6.30
%
Διογένης:

Ο Ξενιάδης τον αγόρασε ως δούλο από την Κρήτη, και τον μετέφερε στην
Κόρινθο όπου, τον ελευθέρωσε, του ανέθεσε την εκπαίδευση των παιδιών του
και την διαχείριση του οίκου του.
Ο ίδιος ο Ξενιάδης, τον λάτρευε και έλεγε, 
"Στο σπίτι μου, μπήκε ένας καλός δαίμονας" [Λ. 6.74], 
αλλά και αυτός δεν καταχράστηκε την εμπιστοσύνη και του φίλου του.

%
Διογένης:

Τα παιδιά του πλούσιου Ξενιάδη τα εκπαίδευσε να ντύνονται λιτά, 
να φέρονται απλά, τα έβαλε να μάθουν έργα ποιητών και άλλων καθώς 
και έργα δικά του, και αυτά τον λάτρευαν.

                -- Λαέρτιος, 6.30, 6.31
%
Διογένης:

Ο Κλεομένης στο έργο του "Παιδαγωγικός" αναφέρει ότι οι φίλοι
του Διογένη θέλησαν να τον ελευθερώσουν (από δούλο του Ξενιάδη)
και εκείνος τους απεκάλεσε ανόητους, γιατί, όπως είπε, 

        τα λιοντάρια δεν είναι δούλοι αυτών που τα τρέφουν,
        αλλά αυτοί που τρέφουν τα λιοντάρια 
        είναι δούλοι των λιονταριών, 
        αφού ο φόβος χαρακτηρίζει τους δούλους,
        ενώ τα θηρία προκαλούν φόβο στους ανθρώπους

                -- Λαέρτιος, 6.75
%
Διογένης:

Οι διάφοροι απολογισμοί δίνονται σχετικά με τον τρόπο και το χρόνο του
θανάτου του. Φαίνεται πιθανότερο ότι πέθανε στην Κόρινθο, κατά το 
90ο έτος της ηλικίας του και την 114η Ολυμπιάδα.

Οι φίλοι του τσακώθηκαν για το ποιος θα τον θάψει.
Μια στήλη του Παριανού μάρμαρου, που ολοκληρώνετε με την μορφή 
ενός σκύλου, τοποθετήθηκε στον τάφο του.

Παυσανίας:
        "Όπως πηγαίνουμε στην Κόρινθο θα βρούμε τάφους,
        και κοντά στην πύλη είναι θαμμένος ο Διογένης από την Σινώπη, 
        αυτός που οι Έλληνες αποκαλούν σκύλo"

Οι συμπολίτες του της Σινώπης, δημιούργησαν επίσης, ορειχάλκινα αγάλματα
στη μνήμη του φιλοσόφου.

        "Καί ο χαλκός γερνάει με το πέρασμα του χρόνου,
                όμως, Διογένη,
        η δόξα σου θα υπάρχει αιώνια, γιατί μόνο εσύ
        έδειξες στους θνητούς τον τρόπο να είναι αυτάρκεις
        και τον δρόμο που οδηγεί στην απλή ζωή"

Επιγραφή σε άγαλμα του Διογένη, αφιέρωμα από τους συμπολίτες του.

                -- Λαέρτιος, 6.78

%
Διογένης:

Η μόρφωση, έλεγε, πως για τους νέους είναι σύνεση, για τους γέρους
παρηγοριά, για τους φτωχούς πλούτος και για τους πλούσιους στολίδι.

                -- Λαέρτιος, 6.68
%
Διογένης:

Ακόμη έλεγε πως όταν βλέπει ιατρούς και φιλόσοφους,
θεωρεί τον άνθρωπο ως το πιο συνετό ζώο.

Όταν όμως βλέπει ονειροκρίτες, μάντεις και όσους ασχολούνται με αυτούς 
ή όταν βλέπει εκείνους που φουσκώνουν αλαζονικά για τη φήμη και τον 
πλούτο τους, έχει τη γνώμη πως 
δεν υπάρχει τίποτα πιο ανόητο από τον άνθρωπο.

                -- Λαέρτιος, 6.24
%
Διογένης:

        Τα πάντα ανήκουν στους Θεούς.
        Οι σοφοί είναι φίλοι των Θεών.
        Μεταξύ φίλων όλα είναι κοινά, 
        άρα όλα ανήκουν στους σοφούς.

                -- Λαέρτιος, 6.37
%
Διογένης:

Στην ερώτηση τι κέρδισε από την φιλοσοφία, απάντησε:

        "Αν μη τι άλλο, σίγουρα το να είμαι έτοιμος 
                                να αντιμετωπίσω οτιδήποτε μου τύχει"

                -- Λαέρτιος, 6.63
%
Διογένης:

Σ' αυτόν που του είπε ότι δεν ενδιαφέρεται για την φιλοσοφία, 
του απάντησε:

        "Τότε γιατί ζεις, αφού δεν θες να ζεις καλά"

                -- Λαέρτιος, 6.65
%
Διογένης:

Απορούσε με τους μαθηματικούς που παρατηρούν τα άστρα και παραβλέπουν 
όσα είναι μπροστά στα πόδια τους.

                -- Λαέρτιος, 6.28
%
Διογένης:

Με τη γεωμετρία, τη μουσική, την αστρονομία και τα παραπλήσια, 
ο Διογένης δεν ασχολήθηκε επειδή τα θεωρούσε άχρηστα και μη αναγκαία.

                -- Λαέρτιος, 6.73
%
Διογένης:

Τους δε Διονυσιακούς αγώνας (Θέατρο) μεγάλα θαύματα μωροίς έλεγε.

                -- Λαέρτιος, 6.24
%
Διογένης:

Απορούσε με τους γραμματικούς που αναζητούν τα λάθη του Οδυσσέα 
και αγνοούν τα δικά τους.

                -- Λαέρτιος, 6.27
%
Διογένης:

        Απορούσε με τους μουσικούς που
        συντονίζουν αρμονικά τις χορδές της λύρας,
        ανάρμοστα με την ψυχή τους.

                -- Λαέρτιος, 6.27
%
Διογένης:

Σε κάποιον που θαύμαζε το πλήθος των αφιερωμάτων στη Σαμοθράκη, είπε:

        "Θα ήταν πολύ περισσότερα, 
                αν έστελναν αφιερώματα και αυτοί που δεν σώθηκαν"

                -- Λαέρτιος, 6.59
%
Διογένης:

Όταν είδε κάποτε τους υπεύθυνους της περιουσίας ενός ιερού να 
τραβολογούν κάποιον που είχε κλέψει μια φιάλη είπε:

        "Οι μεγάλοι κλέφτες σέρνουν τον μικρό"

                -- Λαέρτιος, 6.45
%
Διογένης:

Οι Αθηναίοι του ζήτησαν να μυηθεί και του έλεγαν ότι θα είχε καλύτερη 
θέση στον Άδη. Απάντησε:

        "Είναι γελοίο να βρίσκονται ο Αγησίλαος και ο Επαμεινώνδας 
        στα Τάρταρα και κάποιοι τιποτένιοι επειδή μυήθηκαν 
        να βρίσκονται στις νήσους των Μακάρων"

                -- Λαέρτιος, 6.39
%
Διογένης:

        "Οι ρήτορες μαθαίνουν και μιλάνε για το δίκαιο,
                                                αλλά δεν το πράτουν"

                -- Λαέρτιος, 6.28
%
Διογένης:

Ένας τύραννος τον ρώτησε κάποτε, ποιος χαλκός είναι καλύτερος για την 
κατασκευή ανδριάντα, του απάντησε:

        "Αυτός με τον οποίο κατασκευάστηκαν
                        τα αγάλματα των Αρμόδιου και Αριστογείτων(1)"

(1) Οι δολοφόνοι του τύραννου Πεισίστρατου (το 514 π.Χ.).
    Αυτοί οι δύο τυραννοκτόνοι, ήταν ιδιαίτερα αγαπητοί στους Αθηναίους 
    και τα αγάλματά τους στόλιζαν την είσοδο της Ακρόπολης.

                -- Λαέρτιος, 6.50
%
Διογένης:

Όταν τον ρώτησαν από που είναι, είπε 

                "κοσμοπολίτης"

                -- Λαέρτιος, 6.63
%
Διογένης:

Όταν ρωτήθηκε τι είναι ωραιότερο για τους ανθρώπους είπε:

         "το να μιλούν ελεύθερα"

                -- Λαέρτιος, 6.69
%
Διογένης:

Κορόιδευε την ευγενική καταγωγή, την δόξα και τα παρόμοια, 
                                        είναι "κοσμήματα κακίας" έλεγε.

                -- Λαέρτιος, 6.72
%
Διογένης:

        "Η μόνη σωστή πολιτειακή οργάνωση είναι οι νόμοι της φύσης"

                -- Λαέρτιος, 6.72
%
Διογένης:

Οι γυναίκες έλεγε πρέπει να είναι κοινές για όλους.
Δεν αναγνώριζε τον γάμο, αλλά υποστήριζε ότι καθένας μπορεί να έχει 
σχέσεις μ' αυτή που θα ανταποκριθεί στο ενδιαφέρον του.
Έτσι και τα παιδιά θα είναι κοινά.

                -- Λαέρτιος, 6.73
%
Διογένης:

Έκπληξη του προκαλούσαν οι δούλοι που ενώ έβλεπαν το αφεντικό τους 
να τρώει πλουσιοπάροχα, δεν έκλεβαν.

                -- Λαέρτιος, 6.29
%
Διογένης:

        Τους ρήτορες και όσους ενδοξολογούν τους έλεγε τρισάθλιους.

                -- Λαέρτιος, 6.46
%
Διογένης:

        "οι Θεοί έδωσαν στους ανθρώπους τη δυνατότητα να ζούν εύκολα
                        αλλά αυτό δεν φαίνετε
        γιατί οι άνθρωποι ζητούν μελόπιτες, αρώματα και τα παραπλήσια"

                -- Λαέρτιος, 6.44
%
Διογένης:

        "Τη ζωή πρέπει να είμαστε έτοιμοι να την αντιμετωπίσουμε 
                ή με τον λόγο (λογική) ή με τον βρόχο (θηλιά)"

                -- Λαέρτιος, 6.24
%
Διογένης:

        Την φιλάργυρία την θεωρούσε "μητρόπολη" όλων των κακών.

                -- Λαέρτιος, 6.50
%
Διογένης:

        Τους καλούς ανθρώπους τους έλεγε ομοιώματα Θεών, 
                τον έρωτα ασχολία αργόσχολων.

                -- Λαέρτιος, 6.50
%
Διογένης:

Όταν ρωτήθηκε που είδε ενάρετους (σύμφωνα με τις αρχές του) άντρες,
αποκρίθηκε:

        "Άντρες πουθενά, στην Σπάρτη όμως, είδα παιδιά"

                -- Λαέρτιος, 6.27
%
Διογένης:

        Έλεγε ότι οι άνθρωποι συναγωνίζονται
                στο σκάψιμο(1) και στις κλωτσιές, 
        όχι όμως και για το ποιός είναι καλός και τίμιος.

                -- Λαέρτιος, 6.27

(1)  Προετοιμασία για τους αγώνες
%
Διογένης:

        Κατέκρινε αυτούς που επαινούσαν τους δίκαιους, 
        επειδή είναι υπεράνω χρημάτων, 
        ενω συγχρόνως ζήλευαν τους πλούσιους.

                -- Λαέρτιος, 6.28
%
Διογένης:

        "Είμαι από τους σκύλους που επαινούνται, 
                κανείς όμως δεν τολμά να κυνηγίσει μαζί μου"

                -- Λαέρτιος, 6.33
%
Διογένης:

Σε όσους έδιναν σημασία στα όνειρα έλεγε

        πως με όσα κάνουν όταν είναι ξύπνοι δεν ασχολούνται, 
        ενω γι' αυτά που συμβαίνουν στον ύπνο τους
        δείχνουν μεγάλο ενδιαφέρον.

                -- Λαέρτιος, 6.42
%
Διογένης:

Σ' αυτούς που του είπαν, 
        "γέρασες, κοίτα να ξεκουραστείς", είπε

        "Αν έπαιρνα μέρος σε αγώνα δρόμου, στο τέλος, 
                θα έπρεπε να χαλαρώσω αντί να επιταχύνω;"

                -- Λαέρτιος, 6.34
%
Διογένης:

        "Τα αξιόλογα πράγματα μπορούν να αγοραστούν 
                με ασήμαντα ποσά και το αντίστροφο.
        Μπορεί δηλαδή να αγοραστεί ένας αδριάντας με 3000
                ενώ μια μεγάλη ποσότητα αλεύρων με δύο χάλκινα"

                -- Λαέρτιος, 6.35
%
Διογένης:

        Τα λόγια που λέγονται για ευχαρίστιση τα παρομοίασε 
                με μελένια αγχόνη.

                -- Λαέρτιος, 6.51
%
Διογένης:

        Την κοιλιά (πείνα) την αποκαλούσε Χάρυβδη της ζωής.

                -- Λαέρτιος, 6.51
%
Διογένης:

Όταν ρωτήθηκε
        "Αν πεθάνεις, ποιός θα φροντίσει την κηδεία σου;"

Απάντησε
        "Αυτός που θα θέλει το σπίτι μου"

                -- Λαέρτιος, 6.53
%
Διογένης:

        Όταν ρωτήθηκε πότε πρέπει να πατρευόμαστε, είπε:

        "Τους μεν νέους μηδέπω (όχι ακόμα), 
                        τους δε πρεσβύτερους μηδεπώποτε (ποτέ)"

                -- Λαέρτιος, 6.54
%
Διογένης:

        και την μεν Ευκλείδου σχολήν έλεγε χολήν,
                την δε Πλάτωνος διατριβήν, κατατριβήν.

                -- Λαέρτιος, 6.24
%
Διογένης:

Ο Πλάτωνας τον είδε να πλένει λάχανα και του είπε:

        "Αν ήξερες να τιμάς τον Διονύσιο(1) δεν θα έπλενες λάχανα τώρα"

και ο Διογένης απάντησε:

        "Και εσύ αν έπλενες λάχανα δεν θα τιμούσες τον Διονύσιο"

                -- Λαέρτιος, 6.58

(1) Ο τύραννος των Συρακουσών.
%
Διογένης:

Ο στωικός Διονύσιος λέει πως αιχμαλωτίστηκε στη μάχη της Χαιρώνιας και 
οδηγήθηκε μπροστά στον Φίλιππο. Όταν ρωτήθηκε ποιός είναι, απάντησε:

                "κατάσκοπος της απληστίας σου"

Τα λόγια του προκάλεσαν θαυμασμό και αφέθηκε ελεύθερος...

                -- Λαέρτιος, 6.43
%
Διογένης:

        Λένε πως ο Αλέξανδρος είχε πει πως αν δεν ήταν ο Αλέξανδρος, 
                                        θα ήθελε να είναι ο Διογένης.

                -- Λαέρτιος, 6.32
%
Διογένης:

Καθώς λιαζόταν στο Κράνειο {στην Κόρινθο} στάθηκε μπροστά του 
ο Αλέξανδρος και του είπε "αίτησόν με ό θέλεις", 
και απάντησε "αποσκότησόν μου"(1).

                -- Λαέρτιος, 6.38 

(1) "μην μου κρύβεις τον ήλιο"
%
Διογένης:

Κάποτε που ο Αλέξανδρος έστειλε επιστολή με κάποιον ονόματι Άθλιο, 
στον Αντίπατρο στην Αθήνα, ο Διογένης που ήταν παρών είπε

                "άθλιος παρ'  αθλίου δι' αθλίου πρός άθλιον".

                -- Λαέρτιος, 6.44
%
Διογένης:

Όταν ο Πέρδικκας τον απείλησε πως αν δε πάει θα τον σκοτώσει, είπε:

        "Δεν πειράζει, το ίδιο θα έκανε και μια αράχνη", 
        εκείνο που θα θεωρούσε απειλή θα ήταν αν 
        "ακόμη και χωρίς εμένα θα μπορούσες να ζήσεις ευτυχισμένα"

                -- Λαέρτιος, 6.44
%
Διογένης:

        Αλέξανδρος: "δεν με φοβάσαι;"
        Διογένης:   "Τι είσαι; καλος ή κακός;"
        Αλέξανδρος: "Καλός"
        Διογένης:   "Ποίος φοβάται το καλό;"

                -- Λαέρτιος, 6.68
%
Διογένης:

Σε ένα συμπόσιο νέων, μπήκε αξύριστος και τον χτύπησαν.
Ο Διογένης έγραψε τα ονόματα αυτών που τον χτύπησαν, 
και κυκλοφορούσε με τον κατάλογο κρεμασμένο επάνω του 
μέχρι που οι νέοι αυτοί  κατηγορήθηκαν και τιμωρήθηκαν 
για υβριστική συμπεριφορά.

                -- Λαέρτιος, 6.33
%
Διογένης:

Στον Ξενιάδη που τον αγόρασε για δούλο είπε

        "Κοίτα να κάνεις ότι σου λέω",

και όταν εκείνος του απάντησε "Πάνω πηγαίνουν τα νερά των ποταμών"
ο Διογένης απάντησε 

        "Αν ήσουν άρρωστος και αγόραζες γιατρό δεν θα υπάκουες 
                                        αλλά θα του έλεγες το ίδιο;"

                -- Λαέρτιος, 6.36
%
Διογένης:

Κάποιος τον κάλεσε σε δείπνο αλλά του είπε ότι δεν θα πάει γιατί την 
τελευταία φορά δεν του είπε (ο οικοδεσπότης) "ευχαριστώ".

                -- Λαέρτιος, 6.34
%
Διογένης:

Συνάντησε τον ρήτορα Δημοσθένη την ώρα που έτρωγε σε ένα πανδοχείο.

Εκείνος προσπάθησε να του κρυφτεί στο βάθος του είπε 
                "Όσο πας, μπαίνεις βαθύτερα" (πέφτεις χαμηλότερα).

                -- Λαέρτιος, 6.34
%
Διογένης:

        Σε κάποιο δείπνο κάποιοι του έριχναν κόκαλα σαν σε σκύλο,
        τότε εκείνος σηκώθηκε και τους κατούρησε σαν σκύλος.

                -- Λαέρτιος, 6.46
%
Διογένης:

Έναν μεγαλόσωμο κιθαρωδό που όλοι κατηγορούσαν αυτός τον επαινούσε.
Όταν ρωτήθηκε γιατί είπε:

        "Επειδή, παρά το μέγεθος του, παίζει κιθάρα και δεν ληστεύει"

                -- Λαέρτιος, 6.47
%
Διογένης:

Κάποτε ζητιάνευε από ένα άγαλμα, όταν ρωτήθηκε γιατί, απάντησε:

                "Μελετώ την αποτυχία"

ή κάποτε ζητησε έναν αδριάντα, όταν ρωτήθηκε γιατί, απάντησε

                "Μελετώ την αποτυχία"

                -- Λαέρτιος, 6.49
%
Διογένης:

Όταν ρωτήθηκε γιατί οι άνθρωποι ελεούν τους ζητιάνους αλλά όχι 
τους φιλόσοφους, είπε:

        "γιατί κουτσοί και τυφλοί υπάρχει περίπτωση να γίνουν, 
                                        φιλόσοφοι όμως αποκλείεται"

                -- Λαέρτιος, 6.56
%
Διογένης:

Όταν ο Κρατερός του ζήτησε να τον επισκεφτεί απάντησε

        "Προτιμώ να γλείφω αλάτι(1) στην Αθήνα παρά 
                να απολαμβάνω τα πολυτελή τραπέζια του Κρατερού"

                -- Λαέρτιος, 6.57

(1) Τα παστά ψάρια που ήταν η φθηνότερη τροφή.
%
Διογένης:

Παρουσιάστηκε σε μια ομιλία του ρήτορα Αναξιμένη κρατώντας ένα παστό ψάρι 
και απέσπασε την προσοχή των ακροατών, 
ο ρήτορας αγανάκτησε και ο Διογένης είπε:

        "Ένα τιποτένιο ψάρι διέλυσε την ομιλία του Αναξιμένη"

                -- Λαέρτιος, 6.57
%
Διογένης:

        Όταν τον κατηγόρησαν ότι τα πίνει στο καπηλειό, 
        απάντησε "και στο κουρείο, κουρεύομαι".

                -- Λαέρτιος, 6.66
%
Κράτης ο κυνικός:

Ο Κράτης καταγόταν από την Θήβα και ήταν μαθητής του Διογένη.
Είναι ο πιο σημαντικός μαθητής του. 
Ο Κράτης επίσης ήταν και ο δάσκαλος του Ζήνων του Κιτιεύς του "πατέρα" 
της σχολής των στοϊκών. 
Η σχολή αυτή ήταν η σημαντικότερη από όλες τις άλλες της αρχαιότητας.

Ήταν πλούσιος αλλά πούλησε όλη την περιουσία του και συγκέντρωσε 
διακόσια τάλαντα (σοβαρό ποσό), τα οποία τα ξόδεψε για τους συμπολίτες
του.

Παντρεύτηκε την πανέξυπνη Ιππαρχία, η οποία είχε γοητευτεί απο τις
διαλεξεις του και παράτησε την πλούσια και αριστοκρατική οικογένια της 
για να ζήσει ασκητικά με τον (φτωχό πλέον) Κράτη.
%
Κράτης ο κυνικός:

        "Όσα έμαθα, μελέτησα και διδάχτηκα από τις Μούσες, αυτά έχω. 
                        Ο πλούτος και τα υλικά αγαθά γίνονται καπνός"

                -- Λαέρτιος, 6.86
%
Κράτης ο κυνικός:

        "Από την φιλοσοφία κέρδισα ένα δοχείο λούπινα 
                        και το να μην νοιάζομαι για τίποτα"

                -- Λαέρτιος, 6.86
%
Κράτης ο κυνικός:

        "Τον έρωτα τον σταματά η πείνα, ειδεμή, ο χρόνος. 
                Αν δεν ισχύει τίποτα από αυτά, τότε η θηλιά"

                -- Λαέρτιος, 6.87
%
Κράτης ο κυνικός:

Ο Δημήτριος ο Μάγνης αναφέρει ότι είχε εμπιστευτεί τα χρήματά του
σε κάποιον τραπεζίτη με τη συμφωνία, αν τα παιδιά του γίνουν
συνηθησμένοι άνθρωποι, να τους τα δώσει, αν γίνουν φιλόσοφοι
να τα μοιράσει στον λαό, γιατί αν ασχολούνταν με τη φιλοσοφία
δεν θα χρειάζονταν τίποτε.

                -- Λαέρτιος, 6.88
%
Κράτης ο κυνικός:

        Έβριζε επίτηδες τις πόρνες εξασκούμενος στο να μπορεί 
                                        να αντιμετωπίσει βρισιές.

                -- Λαέρτιος, 6.90
%
Κράτης ο κυνικός:

        "Πρέπει να σπουδάζουμε φιλοσοφία, ώς την στιγμή 
                που θα βλέπουμε τους στρατηγούς ως οδηγούς γαϊδάρων"

                -- Λαέρτιος, 6.92
%
Κράτης ο κυνικός:

Όταν ο Αλέξανδρος τον ρώτησε αν θέλει να ανοικοδομηθεί η πατρίδα του(1)
είπε:

        "Για ποιό λόγο; 
                Ίσως κάποιος άλλος Αλέξανδρος την ξαναερειπωσει"

                -- Λαέρτιος, 6.93

(1) Ο Αλέξανδρος είχε καταστρέψει την Θήβα.
%
Κράτης ο κυνικός:

        Έλεγε πως πατρίδα του είναι η ασημότητα και η φτώχια, 
        που δεν προσβάλλονται από καμμιά συγκυρία,
        και είναι πολίτης του Διογένη 
        ο οποίος ποτέ δεν σκέφτεται να κάνει κακό εξαιτείας φθόνου.

                -- Λαέρτιος, 6.93
%
Κράτης ο κυνικός:

Ο Μητροκλής ήταν αδερφός της Ιππαρχίας, της γυναίκας του Κράτη.
Ηταν μαθητής του Θεόφραστου του περιπατητικού καί τόσο είχε "διαφθαρεί" 
ώστε κάποτε στη διάρκεια μιας ομιλίας έκλασε.
Ντράπηκε τόσο ώστε κλειστικε στο σπίτι του παρακαλώντας να πεθάνει!!! 

Παρακαλεσαν, λοιπόν, τον Κράτη να τον συνεφέρει.
Αυτός πήγε σπίτι του, έχοντας φάει πρώτα λούπινα, και αφού προσπάθησε 
με τα λόγια και δεν τα κατάφερε για αρκετή ώρα, 
έκλασε και αυτός δημοσίως... 

Από τότε ο Μητροκλής έγινε μαθητής του.
[Λαέρτιος, 6.94]
%
Ιππαρχία (η γυναίκα του Κράτη του κυνικού):

Η Ιππαρχία ερωτεύτηκε τα λόγια και τις πράξεις του Κράτη και δεν 
ενδιαφερόταν για κανένα άλλο μνηστήρα πλούσιο ή μη, "ευγενή" ή όχι,
όμορφο ή όχι.

Απειλούσε τους γονείς της ότι θα αυτοκτονήσει αν δεν πάρει τον Κράτη.
Παρακάλεσαν οι γονείς της τον Κράτη να την μεταπείσει και αυτός έκανε
τα πάντα και επειδή δεν τα κατάφερε, πήρε όσα πράγματα είχε, 
τα έβαλε μπροστά της και είπε 

"Αυτός είναι ο γαμπρός και αυτή η περιουσία του. Σκέψου και πράξε. 
Για να ζήσεις μαζί μου πρέπει να προσαρμοστείς σ' αυτή την ζωή"

Η κοπέλα έκανε την επιλογή της, φόρεσε τα ίδια ρούχα με τον άντρα της, 
και τον ακολουθούσε σε όλες τις δημόσιες εμφανίσεις και δείπνα...
[Λαέρτιος, 6.97]
%
Ιππαρχία (η γυναίκα του Κράτη του κυνικού):

        "...Άν έκανε κάτι ο Θεόδωρος και δεν θεωρούνταν αδικία, 
        δεν θα θεωρούνταν αν το έκανε και η Ιππαρχία. 
        Ο Θεόδωρος, χτυπώντας τον εαυτό του δεν διαπράττει αδίκημα, 
        άρα ούτε και η Ιππαρχία θα διαπράξει αν χτυπήσει τον Θεόδωρο"

                -- Λαέρτιος, 6.97
%
Μόνιμος ο κυνικός:

Έγινε άνδρας σπουδαίος, ώστε ο κωμικός Μένανδρος τον αναφέρει λέγοντας, 
στο δράμα του "Ιπποκόμος" τα εξής:

        Ύπαρχε, Φίλων, κάποιος Μόνιμος, 
                άνθρωπος σοφός, όχι όμως πολύ γνωστός.

        Αυτός που είχε σακούλι; 

        Τρία σακούλια, όμως, μα τον Δία 
                δεν είπε τίποτα παρόμοιο με το "γνώθι σ' αυτόν" 
                ούτε με όσα ανάλογα θρυλούνται.

        Είπε μόνο πως είναι κούφια λόγια
                οι υποθέσεις που κάνουν οι άνθρωποι.

                -- Λαέρτιος, 6.83
%
Αντισθένης:

    "Λόγος είναι αυτό που φανερώνει τι ήταν ή τι είναι κάτι"

                -- Λαέρτιος, 6.2
%
Αντισθένης:

Σ' αυτόν που τον ρώτησε τι είδους γυναίκα να πάρει, είπε:

    "Αν είναι ωραία θα έχεις κοινή,
        αν είναι άσχημη, θα έχει ποινή"

                -- Λαέρτιος, 6.3
%
Αντισθένης:

Όταν ο ιερέας είπε πως οι μυημένοι (Ορφικά) γίνονται μέτοχοι πολλών
καλών στον Άδη, είπε:

    "Δηλαδή, τι, δεν πεθαίνεις;"

                -- Λαέρτιος, 6.4
%
Αντισθένης:

    "Απο την φιλοσοφία κέρδισα το να μπορώ να επικοινωνώ
        με τον εαυτό μου"

                -- Λαέρτιος, 6.6
%
Αντισθένης:

    "Η σπουδαιότερη μάθηση είναι
        το να ξέρουμε να απομακρύνουμε την άγνοια"

                -- Λαέρτιος, 6.7
%
Αντισθένης:

    "Να προσέχουμε τους εχθρούς, διότι είναι οι πρώτοι
        που αντιλαμβάνονται τα σφάλματά μας"

                -- Λαέρτιος, 6.12
%
Διογένης:

    Έλεγε ότι στην τύχη αντιστεκόταν με το θάρρος,
    στον νόμο με την φύση,
    στα πάθη με την λογική.

                -- Λαέρτιος, 6.38
%
Διογένης:

Όταν ο Πλάτωνας διατύπωσε τον ορισμό ότι ο άνθρωπος είναι
ζώο δίποδο και άπτερο, ο Διογένης μάδησε έναν κόκορα,
πήγε στην σχολή του Πλάτωνα και είπε:

    "Αυτός είναι ο άνθρωπος του Πλάτωνα"

                -- Λαέρτιος, 6.40
%
Σωκράτης:

    Το ασήμι και η πορφύρα είναι χρήσιμα στους τραγωδούς,
    όχι στη ζωή.

        -- Λαέρτιος, 2.25
%
Σωκράτης:

    Όποιος χρειάζεται λίγα, είναι πολύ κοντά στους Θεούς.

        -- Λαέρτιος, 2.27
%
Σωκράτης:

Επαινούσε τις ελεύθερες ώρες ως το σπουδαιότερο απόκτημα.

        -- Λαέρτιος, 2.31
%
Σωκράτης:

    Έλεγε πως υπάρχει ένα μόνο καλό, η γνώση, και ένα κακό,
    η αμάθεια.

        -- Λαέρτιος, 2.31
%
Σωκράτης:

Όταν ρωτήθηκε τι είναι καλύτερο, να παντρεύεται κανείς ή όχι, είπε:

    "Ό,τι κι αν κάνεις από τα δύο, θα το μετανιώσεις"

        -- Λαέρτιος, 2.33
%
Αναξαγόρας:

Όταν είδε τον τάφο του Μαυσωλού, είπε:

    "Ο πολυτελής τάφος είναι είδωλο της περιουσίας
            που έγινε πέτρες"

        -- Λαέρτιος, 1.11
%
Σόλων:

    "Η πόλη καταστρέφεται από τους φιλόδοξους άνδρες.
    και ο λαός από άγνοια υποδουλώνεται στον τύραννο"

        -- Λαέρτιος, 1.50
%
Σόλων:

Μερικοί λένε πως ο Κροίσος, αφού φόρεσε πολλά στολίδια και κάθισε στο
θρόνο του, τον ρώτησε αν έχει δει ωραιότερο θέαμα. Απάντησε

    "Ναι, πετεινούς, φασιανούς και παγώνια"

        -- Λαέρτιος, 1.51
%
Σόλων:

    "Οι νόμοι μοιάζουν με ιστό αράχνης που συγκρατεί τα μικρά και αδύναμα
        αλλά σκίζεται από τα μεγάλα"

        -- Λαέρτιος, 1.58
%
Σόλων:

    "Ο λόγος επισφραγίζεται από την σιωπή,
        και η σιωπή από τις περιστάσεις"

        -- Λαέρτιος, 1.59
%
Σόλων:

    "Οι άνθρωποι θα εκάναν όσο το δυνατόν λιγότερες αδικίες,
    αν οι μη αδικημένοι υπέφεραν όσο και οι αδικούμενοι"

        -- Λαέρτιος, 1.59
%
Σόλων:

    "Ο κορεσμός γεννιέται από τον πλούτο,
        και από τον κορεσμό η ύβρις"

        -- Λαέρτιος, 1.59
%
Αναχαρσίς ο Σκύθης:

    "Απορώ, πως γίνετε και στην Ελλάδα αγωνίζονται όσοι έχουν γνώσεις
        και κρίνουν όσοι δεν έχουν"

        -- Λαέρτιος, 1.103
%
Αναχαρσίς ο Σκύθης:

    "Απορώ, πως γίνετε και οι Έλληνες όταν αρχίζουν να πίνουν,
    χρησιμοποιούν μικρά ποτήρια και όταν πιούν πολύ,
    χρησιμοποιούν μεγάλα"

        -- Λαέρτιος, 1.104
%
Αναχαρσίς ο Σκύθης:

Στον Αθηναίο που τον κορόϊδευε επειδή ήταν Σκύθης, είπε:

    "Για μένα η πατρίδα είναι ντροπή,
        εσύ όμως είσαι η ντροπή της πατρίδας"

        -- Λαέρτιος, 1.105
%
Θαλής:

    "Το ισχυρότερο είναι η ανάγκη, διότι κυριαρχεί σε όλα"

        -- Λαέρτιος, 1.35
%
Θαλής:

    "Το σοφώτερο είναι ο χρόνος, διότι ανακαλύπτει τα πάντα"

        -- Λαέρτιος, 1.35
%
Θαλής:

    "Το δυσκολότερο είναι το να γνωρίζεις τον εαυτό σου"

        -- Λαέρτιος, 1.35
%
Θαλής:

Όταν ρωτήθηκε τι είναι το πιο παράξενο που έχει δει, είπε:

    "Ένας γέροντας τύραννος"

        -- Λαέρτιος, 1.36
%
Χίλων, ο Λακεδαιμόνιος:

    "Αποφεύγετε τις υπερβολές. τα καλα προέρχονται από 
        το κατάλληλο μέτρο"

        -- Λαέρτιος, 1.41
%
Αριστόδημος, ο Σπαρτιάτης:

    "Πλούτος είναι η προσωπική αξία"

        -- Λαέρτιος, 1.31
%
Πιττακός:

    "Με την ανάγκη, ούτε οι Θεοί δεν πολεμούν"

        -- Λαέρτιος, 1.77
%
Πιττακός:

    "Άριστο είναι να κάνεις με τον καλύτερο τρόπο
        αυτό που πρέπει να γίνει τώρα"

        -- Λαέρτιος, 1.77
%
Πιττακός:

    "Οι νίκες πετυχαίνονται χωρίς να χυθεί αίμα"

        -- Λαέρτιος, 1.77
%
Πιττακός:

    "Μην αποκαλύπτεις αυτό που σκοπεύεις να κάνεις
        γιατί αν αποτύχεις θα σε κοροϊδεύουν"

        -- Λαέρτιος, 1.77
%
Βίας:

    "Το να αδιαφορούμε για τις ξένες συμφορές 
        είναι ψυχική αρρώστια"

        -- Λαέρτιος, 1.85
%
Βίας:

    "Το πιο γλυκό για τους ανθρώπους
        είναι η ελπίδα"

        -- Λαέρτιος, 1.86
%
Κλεόβουλος:

    "Τον φίλο πρέπει να το ευεργετούμε,
        για να γίνει περισσότερο φίλος,
        και τον εχθρό,
        για να γίνει φίλος"

        -- Λαέρτιος, 1.91
EOF
	breaksw
endsw