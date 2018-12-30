import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class IniSearchButtonListener implements ActionListener {

//フィールド
	FrameIni frameIni;
	FrameSearchInput frameSearchInput;

	//コンストラクタ
	IniSearchButtonListener(FrameIni frameIni, FrameSearchInput frameSearchInput){
this.frameIni = frameIni;
this.frameSearchInput = frameSearchInput;
//初期画面の「検索」ボタンにリスナー登録
frameIni.searchButton.addActionListener(this);
	}

	public void actionPerformed(ActionEvent e){
//まず初期画面 -> 検索入力画面への遷移
this.frameIni.setVisible(false);
this.frameSearchInput.setVisible(true);


	  }

}
