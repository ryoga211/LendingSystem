import java.awt.BorderLayout;
import java.awt.Container;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

public class FrameSearchOutput extends JFrame{
	//フィールド
	JPanel fsiP;
	JButton sqlOutput;
	JButton ToInputButton;
	JButton ToTopButton;

	JTable table;
	JScrollPane sp;

	//テスト用のデータ
	  private String[][] tabledata = {
			    {"日本", "3勝", "0敗", "1分"},
			    {"クロアチア", "3勝", "1敗", "0分"},
			    {"ブラジル", "1勝", "2敗", "1分"},
			    {"オーストラリア", "2勝", "2敗", "0分"}};

	private String[] columnNames = {"商品名", "カテゴリ", "単価", "返却予定日"};


//コンストラクタ
FrameSearchOutput(String title){
		setTitle(title);
		setBounds(100, 100, 300, 250);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.fsiP = new JPanel();
		this.sqlOutput = new JButton("検索結果");
		this.ToInputButton = new JButton("戻る");
		this.ToTopButton = new JButton("Topへ");

		 table = new JTable(tabledata, columnNames);
		 sp = new JScrollPane(table);

		this.fsiP.add(this.sqlOutput);
		this.fsiP.add(this.ToInputButton);
		this.fsiP.add(this.ToTopButton);

		this.fsiP.add(sp);
	    Container contentPane = getContentPane();
	    contentPane.add(this.fsiP, BorderLayout.CENTER);
}



//メソッド
public void addListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
	//リスナークラスをインスタンス化
	SearchOutputGoBackToInputButtonListener temp1 = new SearchOutputGoBackToInputButtonListener(frameIni,frameSearchInput,frameSearchOutput);
	SearchOutputGoBackToTopButtonListener temp2 = new SearchOutputGoBackToTopButtonListener(frameIni,frameSearchInput,frameSearchOutput);
}



}
