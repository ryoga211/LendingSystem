public class MainSystem {
	public static final int WindowHeight = 400;
	public static final int WindowWidth = 500;

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
FrameIni frameIni = new FrameIni("初期画面");
frameIni.setVisible(true);

FrameSearchInput frameSearchInput = new FrameSearchInput("検索条件入力画面");
FrameSearchOutput frameSearchOutput = new FrameSearchOutput("検索結果出力画面");


//リスナー登録メソッドの呼び出し
frameIni.addListener(frameIni,frameSearchInput);
frameSearchInput.addListener(frameIni, frameSearchInput, frameSearchOutput);
frameSearchOutput.addListener(frameIni, frameSearchInput, frameSearchOutput);

	}

}
