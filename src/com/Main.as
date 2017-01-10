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
			this.CreateDirectory();
			
			trace(ReadTxt("AirData/test.txt"));
		}
		/**
		 * 读取文本
		 */
		private function ReadTxt($path:String=""):String
		{
			var file:File = File.applicationStorageDirectory.resolvePath($path);
			var fileStream:FileStream = new FileStream();
			var str:String = "";
			fileStream.open(file, FileMode.READ);
			str=fileStream.readUTFBytes(fileStream.bytesAvailable);
			fileStream.close();
			return str;
		}
		/**
		 * 创建文件夹
		 * @param	$path 路径
		 */
		private function CreateDirectory():void
		{
			var fileDir:File = File.applicationStorageDirectory.resolvePath("AirData");
            fileDir.createDirectory();
		}

	}

}