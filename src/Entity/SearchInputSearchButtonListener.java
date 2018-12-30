import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SearchInputSearchButtonListener implements ActionListener{
	//フィールド
		FrameIni frameIni;
		FrameSearchInput frameSearchInput;
		FrameSearchOutput frameSearchOutput;
		//コンストラクタ
		SearchInputSearchButtonListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
	this.frameIni = frameIni;
	this.frameSearchInput = frameSearchInput;
this.frameSearchOutput = frameSearchOutput;
	//検索条件入力画面の「検索」ボタンにリスナー登録
	this.frameSearchInput.searchButton.addActionListener(this);
		}

		public void actionPerformed(ActionEvent e){
	//まず検索条件入力画面 -> 検索結果出力画面への遷移
			this.frameSearchInput.setVisible(false);
			this.frameSearchOutput.setVisible(true);


			//検索条件入力画面(FrameSearchInput)で入力された値の取得
			int selectedCategory = this.frameSearchInput.categoryList.getSelectedIndex();
			String inputProductName =  this.frameSearchInput.InputproductName.getText();
			//テスト
			System.out.println("入力されたのは　" + "カテゴリ" + FrameSearchInput.category[selectedCategory] + "\n" + "商品名:" + inputProductName);
// Add : ここで、SQLを投げ、結果を検索結果出力画面(this.frameSearchOutput.table)に出す？


		  }

}
