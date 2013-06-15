package nytifawy
{
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import aaa.RotmgParameters.RotmgParameters;
   import hivysif.Pyzykyj;
   import pumoc.Zesihag;
   import komi.Donok;
   import com.company.assembleegameclient.util.Cokinomu;
   import pumoc.Juc;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.util.Cinihel;
   import jediwip.Tunyhazo;
   import flash.display.BitmapData;
   import jediwip.Vofezuzy;
   import flash.display.Bitmap;
   import flash.display.StageQuality;


   public class Hehakabi extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hehakabi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const begatywy:Matrix = new Matrix();

      private static const loh:String = RotmgParameters.lugiboso;

      private static const baqyjim:String = RotmgParameters.wyfa;

      private static const lohol:String = RotmgParameters.quc;

      private static const ERROR:String = RotmgParameters.kokapo;

      private static const zuziluw:String = RotmgParameters.nylajyhy;

      private static const rutosowa:TextField = kadida();

      private static function kadida() : TextField {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:TextField = new TextField();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size=15;
         _loc2_.bold=true;
         _loc1_.defaultTextFormat=_loc2_;
         return _loc1_;
      }

      public var factory:Pyzykyj;

      public var model:Zesihag;

      public var ficedez:Donok;

      public var gap:Cokinomu;

      private var message:Juc;

      private var buffer:Vector.<DisplayObject>;

      public function make(param1:Juc, param2:Boolean=false) : Qetejobu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.message=param1;
         this.buffer=new Vector.<DisplayObject>();
         this.rufu();
         this.pyga();
         this.tyku();
         this.wud();
         this.cunor();
         return new Qetejobu(this.buffer,this.model.nabo.width,this.model.vupute,param2);
      }

      private function pyga() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.message.numStars;
         if(_loc1_>=0)
         {
            this.buffer.push(Cinihel.lifyqejo(_loc1_));
         }
         return;
      }

      private function tyku() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Tunyhazo = null;
         var _loc2_:BitmapData = null;
         if((this.message.pemuz)&&!this.message.sijoj)
         {
            _loc1_=new Vofezuzy("To: ");
            _loc2_=this.getBitmapData(_loc1_,61695);
            this.buffer.push(new Bitmap(_loc2_));
         }
         return;
      }

      private function wud() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         if(!this.[OFS7]benevajut[/OFS][OFS7]([/OFS][OFS7])[/OFS])
         {
            this.[OFS16]qug[/OFS][OFS16]([/OFS][OFS16])[/OFS];
         }
         [OFS20]return[/OFS];
      }

      private function benevajut() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.message.name;
         return _loc1_==loh||_loc1_==baqyjim||_loc1_==lohol||_loc1_==ERROR||_loc1_==zuziluw;
      }

      private function qug() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Tunyhazo = new Vofezuzy(this.zefifi());
         var _loc2_:BitmapData = this.getBitmapData(_loc1_,this.katu());
         this.buffer.push(new Bitmap(_loc2_));
         return;
      }

      private function zefifi() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = (this.message.pemuz)&&!this.message.sijoj?this.message.tady:this.message.name;
         if(_loc1_.charAt(0)=="#"||_loc1_.charAt(0)=="@")
         {
            _loc1_=_loc1_.substr(1);
         }
         return "<"+_loc1_+">";
      }

      private function cunor() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         var _loc1_:Array = this.message.text.split("\n");
         if(_loc1_.length>0)
         {
            this.jegavy(_loc1_[0],true);
            _loc2_=1;
            while(_loc2_<_loc1_.length)
            {
               this.jegavy(_loc1_[_loc2_],false);
               _loc2_++;
            }
         }
         return;
      }

      private function jegavy(param1:String, param2:Boolean) : void {
         var [OFS2]_loc15_:* = [/OFS]true;
         var [OFS4]_loc16_:* = [/OFS]false;
         var [OFS11]_loc8_:DisplayObject = [/OFS][OFS8]null[/OFS];
         var [OFS15]_loc9_:* = [/OFS][OFS13]0[/OFS];
         var [OFS20]_loc10_:uint = [/OFS][OFS17]0[/OFS];
         var [OFS24]_loc11_:* = [/OFS][OFS22]0[/OFS];
         var [OFS28]_loc12_:* = [/OFS][OFS26]0[/OFS];
         var [OFS32]_loc3_:String = [/OFS][OFS30]param1[/OFS];
         var [OFS35]_loc4_:* = [/OFS][OFS33]0[/OFS];
         var [OFS52]_loc5_:int = [/OFS]this.[OFS38]ficedez[/OFS].[OFS41]jawiqaheq[/OFS][OFS41]([/OFS][OFS41])[/OFS].[OFS47]miliguton[/OFS][OFS47]([/OFS][OFS45]15[/OFS][OFS47])[/OFS];
         var [OFS56]_loc6_:* = [/OFS][OFS54]0[/OFS];
         if([OFS58]param2[/OFS])
         {
            for each (_loc8_ in this.[OFS68]buffer[/OFS])
            {
               [OFS96]_loc4_=[/OFS][OFS88]_loc4_[/OFS][OFS94]+[/OFS][OFS90]_loc8_[/OFS].[OFS92]width[/OFS];
            }
            [OFS113]_loc6_=[/OFS][OFS109]_loc3_[/OFS].[OFS110]length[/OFS];
            [OFS115]rutosowa[/OFS].[OFS119]text[/OFS][OFS119]=[/OFS][OFS118]_loc3_[/OFS];
            while([OFS148]rutosowa[/OFS].[OFS151]textWidth[/OFS][OFS165]>=[/OFS]this.[OFS155]model[/OFS].[OFS157]nabo[/OFS].[OFS160]width[/OFS][OFS164]-[/OFS][OFS162]_loc4_[/OFS])
            {
               [OFS132]_loc6_=[/OFS][OFS126]_loc6_[/OFS][OFS130]-[/OFS][OFS128]10[/OFS];
               [OFS134]rutosowa[/OFS].[OFS146]text[/OFS][OFS146]=[/OFS][OFS137]_loc3_[/OFS].[OFS142]substr[/OFS][OFS142]([/OFS][OFS138]0[/OFS][OFS142],[/OFS][OFS140]_loc6_[/OFS][OFS142])[/OFS];
            }
            if([OFS169]_loc6_[/OFS][OFS174]<[/OFS][OFS171]_loc3_[/OFS].[OFS172]length[/OFS])
            {
               [OFS196]_loc9_=[/OFS][OFS178]_loc3_[/OFS].[OFS183]substr[/OFS][OFS183]([/OFS][OFS179]0[/OFS][OFS183],[/OFS][OFS181]_loc6_[/OFS][OFS183])[/OFS].[OFS190]lastIndexOf[/OFS][OFS190]([/OFS][OFS187]" "[/OFS][OFS190])[/OFS];
               [OFS227]_loc6_=[/OFS][OFS195]_loc9_[/OFS][OFS200]==[/OFS][OFS198]0[/OFS]||[OFS207]_loc9_[/OFS][OFS211]==[/OFS][OFS209]-1[/OFS]?[OFS216]_loc6_[/OFS]:[OFS223]_loc9_[/OFS];
            }
            this.jyjemo(_loc3_.substr(0,_loc6_));
         }
         var _loc7_:int = _loc3_.length;
         if(_loc7_>_loc6_)
         {
            _loc10_=this.model.nabo.width/_loc5_;
            _loc11_=_loc6_;
            while(_loc11_<_loc3_.length)
            {
               rutosowa.text=_loc3_.substr(_loc11_,_loc10_);
               while(rutosowa.textWidth>=this.model.nabo.width-_loc4_)
               {
                  _loc10_=_loc10_-5;
                  rutosowa.text=_loc3_.substr(_loc11_,_loc10_);
               }
               _loc12_=_loc10_;
               if(_loc3_.length>_loc11_+_loc10_)
               {
                  _loc12_=_loc3_.substr(_loc11_,_loc10_).lastIndexOf(" ");
                  _loc12_=_loc12_==0||_loc12_==-1?_loc10_:_loc12_;
               }
               this.jyjemo(_loc3_.substr(_loc11_,_loc12_));
               _loc11_=_loc11_+_loc12_;
            }
         }
         return;
      }

      private function jyjemo(param1:String) : void {
         var [OFS3]_loc4_:* = [/OFS]false;
         var [OFS5]_loc5_:* = [/OFS]true;
         var [OFS18]_loc2_:Tunyhazo = [/OFS][OFS12]new [/OFS][OFS12]Vofezuzy[/OFS][OFS12]([/OFS][OFS11]param1[/OFS][OFS12])[/OFS];
         var [OFS32]_loc3_:BitmapData = [/OFS]this.[OFS26]getBitmapData[/OFS][OFS26]([/OFS][OFS20]_loc2_[/OFS][OFS26],[/OFS]this.[OFS22]musybiboj[/OFS][OFS22]([/OFS][OFS22])[/OFS][OFS26])[/OFS];
         this.[OFS34]buffer[/OFS].[OFS43]push[/OFS][OFS43]([/OFS][OFS40]new [/OFS][OFS40]Bitmap[/OFS][OFS40]([/OFS][OFS39]_loc3_[/OFS][OFS40])[/OFS][OFS43])[/OFS];
         [OFS46]return[/OFS];
      }

      private function katu() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.message.name.charAt(0)=="#")
         {
            return 16754688;
         }
         if(this.message.name.charAt(0)=="@")
         {
            return 16776960;
         }
         if(this.message.tady==zuziluw)
         {
            return 10944349;
         }
         if(this.message.tady!="")
         {
            return 61695;
         }
         return 65280;
      }

      private function musybiboj() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.message.name;
         if(_loc1_==loh)
         {
            return 16776960;
         }
         if(_loc1_==baqyjim)
         {
            return 255;
         }
         if(_loc1_==lohol)
         {
            return 16734981;
         }
         if(_loc1_==ERROR)
         {
            return 16711680;
         }
         if(_loc1_.charAt(0)=="@")
         {
            return 16776960;
         }
         if(this.message.tady==zuziluw)
         {
            return 10944349;
         }
         if(this.message.tady!="")
         {
            return 61695;
         }
         return 16777215;
      }

      private function getBitmapData(param1:Tunyhazo, param2:uint) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = this.gap.zoqim();
         var _loc4_:Boolean = RotmgParameters.data_["forceChatQuality"];
         var _loc5_:BitmapData = this.factory.make(param1,14,param2,true,begatywy,true);
         return _loc5_;
      }

      private function rufu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = rutosowa.getTextFormat();
         _loc1_.font=this.ficedez.jawiqaheq().getName();
         rutosowa.defaultTextFormat=_loc1_;
         return;
      }
   }

}