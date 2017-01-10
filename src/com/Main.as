package com
{
	import flash.display.Sprite;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	/**
	 * ...
	 * @author lenglang
	 */
	public class Main extends Sprite
	{

		public function Main()
		{
			
		}
		/**
		 * 读取文本
		 */
		private function ReadTxt(path:String):String
		{
			var file:File = File.documentsDirectory.resolvePath(path);
			var fileStream:FileStream = new FileStream();
			var str:String = "";
			fileStream.open(file, FileMode.READ);
			str=fileStream.readUTFBytes(fileStream.bytesAvailable);
			fileStream.close();
			return str;
		}

	}

}