package ceny
{
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import aaa.rotmg.config.UserConfig;
   import movimet.Jetadopuc;
   import pepyca.Fifu;
   import heko.Kup;
   import com.company.assembleegameclient.util.Votif;
   import pepyca.Depagy;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.util.Wagoq;
   import nec.Zirewe;
   import flash.display.BitmapData;
   import nec.Nara;
   import flash.display.Bitmap;
   import flash.display.StageQuality;


   public class Pahu extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Pahu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const qafywo:Matrix = new Matrix();

      private static const femykojus:String = UserConfig.syjara;

      private static const buramowuw:String = UserConfig.pynezad;

      private static const feru:String = UserConfig.giqik;

      private static const ERROR:String = UserConfig.gez;

      private static const qapono:String = UserConfig.hepefur;

      private static const zyged:TextField = nafeky();

      private static function nafeky() : TextField {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:TextField = new TextField();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size=15;
         _loc2_.bold=true;
         _loc1_.defaultTextFormat=_loc2_;
         return _loc1_;
      }

      public var factory:Jetadopuc;

      public var model:Fifu;

      public var radida:Kup;

      public var tuleva:Votif;

      private var message:Depagy;

      private var buffer:Vector.<DisplayObject>;

      public function make(param1:Depagy, param2:Boolean=false) : Hom {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.message=param1;
         this.buffer=new Vector.<DisplayObject>();
         this.jopocofe();
         this.gyv();
         this.buci();
         this.zofehafi();
         this.zyrig();
         return new Hom(this.buffer,this.model.cucivizyw.width,this.model.qocalopag,param2);
      }

      private function gyv() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.message.numStars;
         if(_loc1_>=0)
         {
            this.buffer.push(Wagoq.lufequgy(_loc1_));
         }
         return;
      }

      private function buci() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Zirewe = null;
         var _loc2_:BitmapData = null;
         if((this.message.tetyroky)&&!this.message.lituwe)
         {
            _loc1_=new Nara("To: ");
            _loc2_=this.getBitmapData(_loc1_,61695);
            this.buffer.push(new Bitmap(_loc2_));
         }
         return;
      }

      private function zofehafi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.zodemag())
         {
            this.dawotaze();
         }
         return;
      }

      private function zodemag() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.message.name;
         return _loc1_==femykojus||_loc1_==buramowuw||_loc1_==feru||_loc1_==ERROR||_loc1_==qapono;
      }

      private function dawotaze() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Zirewe = new Nara(this.lunotojos());
         var _loc2_:BitmapData = this.getBitmapData(_loc1_,this.tega());
         this.buffer.push(new Bitmap(_loc2_));
         return;
      }

      private function lunotojos() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = (this.message.tetyroky)&&!this.message.lituwe?this.message.woqazus:this.message.name;
         if(_loc1_.charAt(0)=="#"||_loc1_.charAt(0)=="@")
         {
            _loc1_=_loc1_.substr(1);
         }
         return "<"+_loc1_+">";
      }

      private function zyrig() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         var _loc1_:Array = this.message.text.split("\n");
         if(_loc1_.length>0)
         {
            this.motyvaf(_loc1_[0],true);
            _loc2_=1;
            while(_loc2_<_loc1_.length)
            {
               this.motyvaf(_loc1_[_loc2_],false);
               _loc2_++;
            }
         }
         return;
      }

      private function motyvaf(param1:String, param2:Boolean) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc8_:DisplayObject = null;
         var _loc9_:* = 0;
         var _loc10_:uint = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc3_:String = param1;
         var _loc4_:* = 0;
         var _loc5_:int = this.radida.gibivi().gene(15);
         var _loc6_:* = 0;
         if(param2)
         {
            for each (_loc8_ in this.buffer)
            {
               _loc4_=_loc4_+_loc8_.width;
            }
            _loc6_=_loc3_.length;
            zyged.text=_loc3_;
            while(zyged.textWidth>=this.model.cucivizyw.width-_loc4_)
            {
               _loc6_=_loc6_-10;
               zyged.text=_loc3_.substr(0,_loc6_);
            }
            if(_loc6_<_loc3_.length)
            {
               _loc9_=_loc3_.substr(0,_loc6_).lastIndexOf(" ");
               _loc6_=_loc9_==0||_loc9_==-1?_loc6_:_loc9_;
            }
            this.gus(_loc3_.substr(0,_loc6_));
         }
         var _loc7_:int = _loc3_.length;
         if(_loc7_>_loc6_)
         {
            _loc10_=this.model.cucivizyw.width/_loc5_;
            _loc11_=_loc6_;
            while(_loc11_<_loc3_.length)
            {
               zyged.text=_loc3_.substr(_loc11_,_loc10_);
               while(zyged.textWidth>=this.model.cucivizyw.width-_loc4_)
               {
                  _loc10_=_loc10_-5;
                  zyged.text=_loc3_.substr(_loc11_,_loc10_);
               }
               _loc12_=_loc10_;
               if(_loc3_.length>_loc11_+_loc10_)
               {
                  _loc12_=_loc3_.substr(_loc11_,_loc10_).lastIndexOf(" ");
                  _loc12_=_loc12_==0||_loc12_==-1?_loc10_:_loc12_;
               }
               this.gus(_loc3_.substr(_loc11_,_loc12_));
               _loc11_=_loc11_+_loc12_;
            }
         }
         return;
      }

      private function gus(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Zirewe = new Nara(param1);
         var _loc3_:BitmapData = this.getBitmapData(_loc2_,this.gynuha());
         this.buffer.push(new Bitmap(_loc3_));
         return;
      }

      private function tega() : uint {
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
         if(this.message.woqazus==qapono)
         {
            return 10944349;
         }
         if(this.message.woqazus!="")
         {
            return 61695;
         }
         return 65280;
      }

      private function gynuha() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.message.name;
         if(_loc1_==femykojus)
         {
            return 16776960;
         }
         if(_loc1_==buramowuw)
         {
            return 255;
         }
         if(_loc1_==feru)
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
         if(this.message.woqazus==qapono)
         {
            return 10944349;
         }
         if(this.message.woqazus!="")
         {
            return 61695;
         }
         return 16777215;
      }

      private function getBitmapData(param1:Zirewe, param2:uint) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = this.tuleva.cykozutuv();
         var _loc4_:Boolean = UserConfig.data_["forceChatQuality"];
         var _loc5_:BitmapData = this.factory.make(param1,14,param2,true,qafywo,true);
         return _loc5_;
      }

      private function jopocofe() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = zyged.getTextFormat();
         _loc1_.font=this.radida.gibivi().getName();
         zyged.defaultTextFormat=_loc1_;
         return;
      }
   }

}