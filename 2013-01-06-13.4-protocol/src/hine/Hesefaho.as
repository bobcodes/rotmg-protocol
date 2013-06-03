package hine
{
[CLASS1137]   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import aaa.Parameters;
   import pudev.Sinobyf;
   import setuv.Tufyz;
   import haqakel.Cuku;
   import com.company.assembleegameclient.util.Vureriju;
   import setuv.Vityvu;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.util.Gugi;
   import totuhare.Qebar;
   import flash.display.BitmapData;
   import totuhare.Javo;
   import flash.display.Bitmap;
   import flash.display.StageQuality;


   public class Hesefaho extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hesefaho() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const subaquzi:Matrix = new Matrix();

      private static const vegahov:String = Parameters.lujujy;

      private static const kutelyze:String = Parameters.pyha;

      private static const wunituka:String = Parameters.pilyniges;

      private static const ERROR:String = Parameters.timepimow;

      private static const conu:String = Parameters.giwekaser;

      private static const lyle:TextField = gemerusul();

      private static function gemerusul() : TextField {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:TextField = new TextField();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size=15;
         _loc2_.bold=true;
         _loc1_.defaultTextFormat=_loc2_;
         return _loc1_;
      }

      public var factory:Sinobyf;

      public var model:Tufyz;

      public var nodujijyw:Cuku;

      public var kebycos:Vureriju;

      private var message:Vityvu;

      private var buffer:Vector.<DisplayObject>;

      public function make(param1:Vityvu, param2:Boolean=false) : Bityn {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.message=param1;
         this.buffer=new Vector.<DisplayObject>();
         this.sozyn();
         this.qorytolig();
         this.qasot();
         this.renutady();
         this.dukevytyg();
         return new Bityn(this.buffer,this.model.mykubowob.width,this.model.dud,param2);
      }

      private function qorytolig() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.message.numStars;
         if(_loc1_>=0)
         {
            this.buffer.push(Gugi.cibifyt(_loc1_));
         }
         return;
      }

      private function qasot() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Qebar = null;
         var _loc2_:BitmapData = null;
         if((this.message.jofytap)&&!this.message.nyjukyfyn)
         {
            _loc1_=new Javo("To: ");
            _loc2_=this.getBitmapData(_loc1_,61695);
            this.buffer.push(new Bitmap(_loc2_));
         }
         return;
      }

      private function renutady() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.qaheveni())
         {
            this.faribepu();
         }
         return;
      }

      private function qaheveni() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.message.name;
         return _loc1_==vegahov||_loc1_==kutelyze||_loc1_==wunituka||_loc1_==ERROR||_loc1_==conu;
      }

      private function faribepu() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Qebar = new Javo(this.najibu());
         var _loc2_:BitmapData = this.getBitmapData(_loc1_,this.bucy());
         this.buffer.push(new Bitmap(_loc2_));
         return;
      }

      private function najibu() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = (this.message.jofytap)&&!this.message.nyjukyfyn?this.message.gisiqiwa:this.message.name;
         if(_loc1_.charAt(0)=="#"||_loc1_.charAt(0)=="@")
         {
            _loc1_=_loc1_.substr(1);
         }
         return "<"+_loc1_+">";
      }

      private function dukevytyg() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:Array = this.message.text.split("\n");
         if(_loc1_.length>0)
         {
            this.suhyzuh(_loc1_[0],true);
            _loc2_=1;
            while(_loc2_<_loc1_.length)
            {
               this.suhyzuh(_loc1_[_loc2_],false);
               _loc2_++;
            }
         }
         return;
      }

      private function suhyzuh(param1:String, param2:Boolean) : void {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc8_:DisplayObject = null;
         var _loc9_:* = 0;
         var _loc10_:uint = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc3_:String = param1;
         var _loc4_:* = 0;
         var _loc5_:int = this.nodujijyw.detahaf().bowad(15);
         var _loc6_:* = 0;
         if(param2)
         {
            for each (_loc8_ in this.buffer)
            {
               _loc4_=_loc4_+_loc8_.width;
            }
            _loc6_=_loc3_.length;
            lyle.text=_loc3_;
            while(lyle.textWidth>=this.model.mykubowob.width-_loc4_)
            {
               _loc6_=_loc6_-10;
               lyle.text=_loc3_.substr(0,_loc6_);
            }
            if(_loc6_<_loc3_.length)
            {
               _loc9_=_loc3_.substr(0,_loc6_).lastIndexOf(" ");
               _loc6_=_loc9_==0||_loc9_==-1?_loc6_:_loc9_;
            }
            this.mijyzuby(_loc3_.substr(0,_loc6_));
         }
         var _loc7_:int = _loc3_.length;
         if(_loc7_>_loc6_)
         {
            _loc10_=this.model.mykubowob.width/_loc5_;
            _loc11_=_loc6_;
            while(_loc11_<_loc3_.length)
            {
               lyle.text=_loc3_.substr(_loc11_,_loc10_);
               while(lyle.textWidth>=this.model.mykubowob.width-_loc4_)
               {
                  _loc10_=_loc10_-5;
                  lyle.text=_loc3_.substr(_loc11_,_loc10_);
               }
               _loc12_=_loc10_;
               if(_loc3_.length>_loc11_+_loc10_)
               {
                  _loc12_=_loc3_.substr(_loc11_,_loc10_).lastIndexOf(" ");
                  _loc12_=_loc12_==0||_loc12_==-1?_loc10_:_loc12_;
               }
               this.mijyzuby(_loc3_.substr(_loc11_,_loc12_));
               _loc11_=_loc11_+_loc12_;
            }
         }
         return;
      }

      private function mijyzuby(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Qebar = new Javo(param1);
         var _loc3_:BitmapData = this.getBitmapData(_loc2_,this.conehody());
         this.buffer.push(new Bitmap(_loc3_));
         return;
      }

      private function bucy() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.message.name.charAt(0)=="#")
         {
            return 16754688;
         }
         if(this.message.name.charAt(0)=="@")
         {
            return 16776960;
         }
         if(this.message.gisiqiwa==conu)
         {
            return 10944349;
         }
         if(this.message.gisiqiwa!="")
         {
            return 61695;
         }
         return 65280;
      }

      private function conehody() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.message.name;
         if(_loc1_==vegahov)
         {
            return 16776960;
         }
         if(_loc1_==kutelyze)
         {
            return 255;
         }
         if(_loc1_==wunituka)
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
         if(this.message.gisiqiwa==conu)
         {
            return 10944349;
         }
         if(this.message.gisiqiwa!="")
         {
            return 61695;
         }
         return 16777215;
      }

      private function getBitmapData(param1:Qebar, param2:uint) : BitmapData {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = this.kebycos.tamawy();
         var _loc4_:Boolean = Parameters.data_["forceChatQuality"];
         var _loc5_:BitmapData = this.factory.make(param1,14,param2,true,subaquzi,true);
         return _loc5_;
      }

      private function sozyn() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextFormat = lyle.getTextFormat();
         _loc1_.font=this.nodujijyw.detahaf().getName();
         lyle.defaultTextFormat=_loc1_;
         return;
      }
   }
[/CLASS]
}