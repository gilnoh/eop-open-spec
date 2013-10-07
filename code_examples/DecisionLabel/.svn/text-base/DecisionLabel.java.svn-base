package de.uniheidelberg;

public enum DecisionLabel {
			Entailment(null),
			NonEntailment(null),
			Abstain(null),
			Paraphrase(Entailment),
			Contradiction(NonEntailment),
			Unknown(NonEntailment),
			//YourLabel(Paraphrase), // You can extend it like this... 
			;
		
			public boolean is(DecisionLabel e) {
				if (e == null) {	
					return false;	
				}
				for(DecisionLabel t = this; t != null; t=t.parent)
					if (e == t) {
						return true;
					}
				return false;
			}
						
			private DecisionLabel parent = null;
			private DecisionLabel(DecisionLabel parent) {
				this.parent = parent;
			}
}
