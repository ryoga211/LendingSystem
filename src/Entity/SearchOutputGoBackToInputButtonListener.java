import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SearchOutputGoBackToInputButtonListener implements ActionListener{
	//フィールド
		FrameIni frameIni;
		FrameSearchInput frameSearchInput;
		FrameSearchOutput frameSearchOutput;
		//コンストラクタ
		SearchOutputGoBackToInputButtonListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
	this.frameIni = frameIni;
	this.frameSearchInput = frameSearchInput;
this.frameSearchOutput = frameSearchOutput;
	//検索結果出力画面の「戻る」ボタンにリスナー登録
	this.frameSearchOutput.ToInputButton.addActionListener(this);
		}

		public void actionPerformed(ActionEvent e){
	//検索結果出力画面 -> 検索条件入力画面への遷移
			this.frameSearchOutput.setVisible(false);
			this.frameSearchInput.setVisible(true);


		  }

}
