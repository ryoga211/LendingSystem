import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SearchInputGoBackToTopButtonListener implements ActionListener{
	//フィールド
		FrameIni frameIni;
		FrameSearchInput frameSearchInput;
		FrameSearchOutput frameSearchOutput;
		//コンストラクタ
		SearchInputGoBackToTopButtonListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
	this.frameIni = frameIni;
	this.frameSearchInput = frameSearchInput;
this.frameSearchOutput = frameSearchOutput;
	//検索条件入力画面の「Topへ」ボタンにリスナー登録
	this.frameSearchInput.ToTop.addActionListener(this);
		}

		public void actionPerformed(ActionEvent e){
	//検索条件入力画面 -> 初期画面への遷移
			this.frameSearchInput.setVisible(false);
			this.frameIni.setVisible(true);


		  }

}
