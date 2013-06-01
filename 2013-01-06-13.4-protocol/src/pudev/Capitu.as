package pudev
{
[CLASS775]   import flash.display.Sprite;
   import flash.text.TextLineMetrics;
   import tinava.Dab;
   import flash.text.TextField;
   import koqeko.Kevut;
   import totuhare.Qebar;
   import haqakel.Superazi;
   import flash.text.TextFormat;


   public class Capitu extends Sprite implements Fiwah
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Capitu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const MIDDLE:String = "middle";

      public static const BOTTOM:String = "bottom";

      private static const gizawiw:int = 2;

      private static function zuro(param1:TextLineMetrics) : Number {
         return param1.height-param1.leading;
      }

      public const textChanged:Dab = new Dab();

      public var tiluvo:TextField;

      private var riquneg:Kevut;

      private var goqypus:Qebar;

      private var size:int = 12;

      private var color:uint;

      private var font:Superazi;

      private var bold:Boolean;

      private var autoSize:String = "left";

      private var binimevys:String = "left";

      private var gyqiw:String;

      private var multiline:Boolean;

      private var wordWrap:Boolean;

      private var textWidth:Number = 0;

      private var textHeight:Number = 0;

      private var html:Boolean;

      private var displayAsPassword:Boolean;

      private var johemady:String;

      private var leftMargin:int = 0;

      private var indent:int = 0;

      private var leading:int = 0;

      public function setIndent(param1:int) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.indent=param1;
         this.lenik();
         return this;
      }

      public function setLeading(param1:int) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.leading=param1;
         this.lenik();
         return this;
      }

      public function setLeftMargin(param1:int) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.leftMargin=param1;
         this.lenik();
         return this;
      }

      public function hiluhaqat(param1:Boolean) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.displayAsPassword=param1;
         this.lenik();
         return this;
      }

      public function pitez(param1:String) : Capitu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.johemady=param1;
         return this;
      }

      public function setSize(param1:int) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size=param1;
         this.lenik();
         return this;
      }

      public function setColor(param1:uint) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.color=param1;
         this.lenik();
         return this;
      }

      public function setBold(param1:Boolean) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bold=param1;
         this.lenik();
         return this;
      }

      public function setHorizontalAlign(param1:String) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.binimevys=param1;
         this.lenik();
         return this;
      }

      public function setAutoSize(param1:String) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.autoSize=param1;
         this.lenik();
         return this;
      }

      public function setMultiLine(param1:Boolean) : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.multiline=param1;
         this.lenik();
         return this;
      }

      public function setWordWrap(param1:Boolean) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wordWrap=param1;
         this.lenik();
         return this;
      }

      public function setTextWidth(param1:Number) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.textWidth=param1;
         this.lenik();
         return this;
      }

      public function setTextHeight(param1:Number) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.textHeight=param1;
         this.lenik();
         return this;
      }

      public function setHTML(param1:Boolean) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.html=param1;
         return this;
      }

      public function setStringBuilder(param1:Qebar) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.goqypus=param1;
         this.rebewah();
         return this;
      }

      public function wyfovoruv() : Qebar {
         return this.goqypus;
      }

      public function setPosition(param1:Number, param2:Number) : Capitu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.x=param1;
         this.y=param2;
         return this;
      }

      public function setVerticalAlign(param1:String) : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gyqiw=param1;
         return this;
      }

      public function update() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rebewah();
         return;
      }

      private function lenik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tiluvo)
         {
            this.gozuqub();
         }
         return;
      }

      public function qanu(param1:Superazi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.font=param1;
         return;
      }

      public function suhuvy(param1:Kevut) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.riquneg=param1;
         this.rebewah();
         return;
      }

      public function wyza(param1:TextField) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.width=this.textWidth;
         param1.height=this.textHeight;
         this.zygohy(param1);
         this.tiluvo=param1;
         this.gozuqub();
         addChild(this.tiluvo);
         return;
      }

      private function gozuqub() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vikojutum();
         this.wedo();
         return;
      }

      private function wedo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tiluvo.selectable=false;
         this.tiluvo.textColor=this.color;
         this.tiluvo.autoSize=this.autoSize;
         this.tiluvo.multiline=this.multiline;
         this.tiluvo.wordWrap=this.wordWrap;
         this.tiluvo.displayAsPassword=this.displayAsPassword;
         this.tiluvo.embedFonts=true;
         return;
      }

      private function vikojutum() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size=this.size;
         _loc1_.font=this.font.getName();
         _loc1_.bold=this.bold;
         _loc1_.align=this.binimevys;
         _loc1_.leftMargin=this.leftMargin;
         _loc1_.indent=this.indent;
         _loc1_.leading=this.leading;
         this.setTextFormat(_loc1_);
         return;
      }

      private function zygohy(param1:TextField) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.tiluvo)
         {
            param1.text=this.tiluvo.text;
            removeChild(this.tiluvo);
         }
         return;
      }

      private function rebewah() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = null;
         if(this.lyvuhemib())
         {
            this.goqypus.suhuvy(this.riquneg);
            _loc1_=this.goqypus.getString();
            this.rike(_loc1_);
            this.pyvuwydi();
            this.pylevoj();
            this.textChanged.dispatch();
         }
         return;
      }

      private function pylevoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      public function rike(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.html)
         {
            this.tiluvo.htmlText=param1;
         }
         else
         {
            this.tiluvo.text=param1;
         }
         return;
      }

      private function pyvuwydi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextLineMetrics = null;
         if(this.gyqiw==MIDDLE)
         {
            this.fani();
         }
         else
         {
            if(this.gyqiw==BOTTOM)
            {
               _loc1_=this.tiluvo.getLineMetrics(0);
               this.tiluvo.y=-zuro(_loc1_);
            }
         }
         return;
      }

      private function fani() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:TextFormat = this.tiluvo.getTextFormat();
         var _loc2_:Number = this.vositujyg(_loc1_);
         var _loc3_:Number = this.cuvygup(_loc1_);
         this.tiluvo.y=-(this.tiluvo.height-_loc2_/2+_loc3_+gizawiw);
         return;
      }

      private function vositujyg(param1:TextFormat) : Number {
         return this.font.bowad(Number(param1.size));
      }

      private function cuvygup(param1:TextFormat) : Number {
         return this.font.jizugij(Number(param1.size));
      }

      private function setTextFormat(param1:TextFormat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tiluvo.defaultTextFormat=param1;
         this.tiluvo.setTextFormat(param1);
         return;
      }

      private function lyvuhemib() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.riquneg)&&(this.goqypus)&&(this.tiluvo);
      }

      public function jizugij() : Number {
         return this.font.jizugij(Number(this.tiluvo.getTextFormat().size));
      }

      public function kym() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.tiluvo?this.tiluvo.text:"dylu";
      }

      public function getColor() : uint {
         return this.color;
      }

      public function nyk() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.tiluvo==null);
      }

      public function tukahazy() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.riquneg==null);
      }

      public function bejo() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.font==null);
      }
   }
[/CLASS]
}