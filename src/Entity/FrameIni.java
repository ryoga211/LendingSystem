import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class FrameIni extends JFrame{
//フィールド
	JPanel IniP;
	JButton searchButton;
	JButton lendButton;
	JButton returnButton;

//コンストラクタ
FrameIni(String title){
		setTitle(title);
		setBounds(100, 100, MainSystem.WindowWidth, MainSystem.WindowHeight);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.IniP = new JPanel();
//		IniP.setPreferredSize(new Dimension(MainSystem.WindowWidth / 2 ,MainSystem.WindowHeight / 2));

		IniP.setBackground(new Color(0.5f,0.5f,0.5f));
		this.searchButton = new JButton("検索");
		this.lendButton = new JButton("貸出");
		this.returnButton = new JButton("返却");

		this.IniP.add(this.searchButton);
		this.IniP.add(this.lendButton);
		this.IniP.add(this.returnButton);
	    Container contentPane = getContentPane();
	    contentPane.add(this.IniP, BorderLayout.CENTER);
}

//メソッド
public void addListener(FrameIni frameIni, FrameSearchInput frameSearchInput){
	//リスナークラスをインスタンス化
	IniSearchButtonListener Isb = new IniSearchButtonListener(frameIni,frameSearchInput);
}

}
