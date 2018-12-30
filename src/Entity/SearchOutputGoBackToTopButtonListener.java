import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SearchOutputGoBackToTopButtonListener implements ActionListener{
	//フィールド
		FrameIni frameIni;
		FrameSearchInput frameSearchInput;
		FrameSearchOutput frameSearchOutput;
		//コンストラクタ
		SearchOutputGoBackToTopButtonListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
	this.frameIni = frameIni;
	this.frameSearchInput = frameSearchInput;
this.frameSearchOutput = frameSearchOutput;
	//検索結果出力画面の「Topへ」ボタンにリスナー登録
	this.frameSearchOutput.ToTopButton.addActionListener(this);
		}

		public void actionPerformed(ActionEvent e){
	//検索結果出力画面 -> 初期画面への遷移
			this.frameSearchOutput.setVisible(false);
			this.frameIni.setVisible(true);


		  }

}

