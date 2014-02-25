using UnityEngine;
using System.Collections;



public class NewBehaviourScript : MonoBehaviour {
	string[] days = new string[] {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
	//int[] horrible=new int[10];

	// Use this for initialization
	void Start () {
//		for(int i = 0; i < 10; i++) {
//			horrible[i] = i;
//		}
		Debug.Log ("weekdays");

		for(int i = 0; i < 7; i++) {
			Debug.Log (days[i]);
		}

	}
	
	// Update is called once per frame
	void Update () {
	}
}
