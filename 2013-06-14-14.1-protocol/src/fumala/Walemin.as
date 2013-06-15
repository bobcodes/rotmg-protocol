package fumala
{
   import flash.display.Sprite;
   import foqudowem.Hedubavyl;
   import flash.text.TextField;
   import zipirytab.Console;
   import kaw.Dyqa;
   import flash.geom.Rectangle;
   import flash.display.BlendMode;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import zipirytab.Winit;


   public final class Walemin extends Sprite implements Hedubavyl
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Walemin() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pinonu=new TextField();
         super();
         alpha=0.8;
         blendMode=BlendMode.LAYER;
         addChild(this.pinonu);
         this.pinonu.alpha=0.6;
         this.pinonu.defaultTextFormat=new TextFormat("_sans",14,16777215,true);
         this.pinonu.htmlText=nivivab;
         this.pinonu.selectable=false;
         this.pinonu.multiline=true;
         this.pinonu.wordWrap=true;
         this.pinonu.autoSize=TextFieldAutoSize.LEFT;
         this.pinonu.background=true;
         this.pinonu.border=false;
         this.pinonu.backgroundColor=13056;
         this.kucod=new Console("",new Winit());
         addChild(this.kucod);
         return;
      }

      private static const nivivab:String = "kabam.lib/console";

      private const nefekeno:RegExp = new RegExp("\\[0x(.+)\\:(.+)\\]","ig");

      private const rova:String = "<font color=\'#$1\'>$2</font>";

      private var pinonu:TextField;

      private var kucod:Console;

      private const buhyfy:Array = [];

      private const sehok:Array = [];

      private const wequdyhu:Object = {};

      private var wygul:Number;

      public function fujaniqiv(param1:Dyqa) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Dyqa = this.wequdyhu[param1.name]=(this.wequdyhu[param1.name])||(this.folejupif(param1.name));
         _loc2_.data=param1.data.replace(this.nefekeno,this.rova);
         this.dazozag();
         return;
      }

      public function fysi(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dyqa = this.wequdyhu[param1];
         if(_loc2_)
         {
            delete this.wequdyhu[[param1]];
            this.sehok.splice(this.sehok.indexOf(_loc2_),1);
         }
         return;
      }

      private function folejupif(param1:String) : Dyqa {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dyqa = new Dyqa(param1);
         this.sehok.push(_loc2_);
         return _loc2_;
      }

      public function log(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.replace(this.nefekeno,this.rova);
         this.buhyfy.push(_loc2_);
         this.kucod.hikogy(_loc2_);
         return;
      }

      public function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         this.buhyfy.length=0;
         this.sehok.length=0;
         for (_loc1_ in this.wequdyhu)
         {
            delete this.wequdyhu[[_loc1_]];
         }
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wygul=param1.height-Bapel.HEIGHT;
         x=param1.x;
         y=param1.y;
         this.pinonu.width=param1.width;
         this.kucod.width=param1.width;
         this.nehife();
         return;
      }

      private function nehife() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pinonu.y=this.wygul-this.pinonu.height;
         return;
      }

      private function dazozag() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pinonu.htmlText=this.sehok.join("\n");
         this.nehife();
         return;
      }

      public function hat() : String {
         return this.buhyfy.join("\r");
      }
   }

}