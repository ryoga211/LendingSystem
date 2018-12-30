import java.awt.BorderLayout;
import java.awt.Container;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class FrameSearchInput extends JFrame{
	//フィールド

		JPanel fsiP;
		JTextField productName;
		JTextArea InputproductName;
		JButton ToTop;
		JButton searchButton;
		JComboBox categoryList;

		public static final String[] category = {"00_洋画","01_邦画","02_アニメ"};

	//コンストラクタ
	FrameSearchInput(String title){
			setTitle(title);
			setBounds(100, 100, MainSystem.WindowWidth, MainSystem.WindowHeight);
			setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			this.fsiP = new JPanel();
			this.productName = new JTextField("商品名");
			this.productName.setLocation(10,10);

			this.InputproductName = new JTextArea("ここに入力");
			this.InputproductName.setLocation(MainSystem.WindowWidth/2,50);
			this.ToTop = new JButton("Topへ");
			this.searchButton = new JButton("検索");
			this.categoryList = new JComboBox(category);


			this.fsiP.add(this.productName);
			this.fsiP.add(this.InputproductName);
			this.fsiP.add(this.ToTop);
			this.fsiP.add(this.searchButton);
			this.fsiP.add(this.categoryList);


		    Container contentPane = getContentPane();
		    contentPane.add(this.fsiP, BorderLayout.CENTER);
	}
	//メソッド
	public void addListener(FrameIni frameIni, FrameSearchInput frameSearchInput, FrameSearchOutput frameSearchOutput){
		//リスナークラスをインスタンス化
		SearchInputSearchButtonListener temp1 = new SearchInputSearchButtonListener(frameIni,frameSearchInput,frameSearchOutput);
		SearchInputGoBackToTopButtonListener  temp2= new SearchInputGoBackToTopButtonListener(frameIni,frameSearchInput,frameSearchOutput);

	}

}
