package nafa
{
   import flash.display.Sprite;
   import fatehymo.Stats;
   import dulywywo.Gege;
   import mol.Tipijojep;
   import kyt.Zurucuvy;
   import com.company.util.IntPoint;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import dulywywo.Julec;
   import com.company.util.Hepapi;
   import dulywywo.Famosehot;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import com.hurlant.util.Base64;
   import flash.net.FileReference;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vehulumes;
   import flash.net.FileFilter;
   import flash.events.IOErrorEvent;
   import vahejo.Tetywybil;
   import sakugyt.Mecunenim;
   import jag.Giq;


   public class Gymowe extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gymowe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(new Tetywybil());
         addChild(new Mecunenim());
         this.sug=Giq.kid().getInstance(Zurucuvy);
         this.hyzifozos=new Pahopadif();
         this.hyzifozos.x=15;
         this.hyzifozos.y=revisahyj;
         this.hyzifozos.addEventListener(Famosehot.UNDO_COMMAND_EVENT,this.hynybumew);
         this.hyzifozos.addEventListener(Famosehot.REDO_COMMAND_EVENT,this.tavyzyce);
         this.hyzifozos.addEventListener(Famosehot.CLEAR_COMMAND_EVENT,this.viwa);
         this.hyzifozos.addEventListener(Famosehot.LOAD_COMMAND_EVENT,this.lucip);
         this.hyzifozos.addEventListener(Famosehot.SAVE_COMMAND_EVENT,this.jucafiso);
         this.hyzifozos.addEventListener(Famosehot.TEST_COMMAND_EVENT,this.gikulofu);
         addChild(this.hyzifozos);
         this.rimycu=new Gege();
         this.mebal=new Simezute();
         this.mebal.addEventListener(Cecan.TILES_EVENT,this.bylajuloz);
         this.mebal.x=800/2-Simezute.loko/2;
         this.mebal.y=revisahyj;
         addChild(this.mebal);
         this.bagy=new Jopafumod(this.mebal);
         this.bagy.x=4;
         this.bagy.y=600-Jopafumod.HEIGHT-10;
         addChild(this.bagy);
         new Vector.<String>(3)[0]="Ground";
         new Vector.<String>(3)[1]="Objects";
         new Vector.<String>(3)[2]="Regions";
         this.meco=new Tipijojep(new Vector.<String>(3),Kumip.WIDTH,26);
         this.meco.x=this.mebal.x+Simezute.loko+4;
         this.meco.y=revisahyj;
         this.meco.addEventListener(Event.CHANGE,this.ruminod);
         addChild(this.meco);
         this.zyfunaqa=new Kihec();
         this.zyfunaqa.x=this.meco.x;
         this.zyfunaqa.y=this.meco.y+this.meco.height+4;
         this.dac=this.zyfunaqa;
         addChild(this.zyfunaqa);
         this.dorulegi=new Tyfecizoc();
         this.dorulegi.x=this.meco.x;
         this.dorulegi.y=this.meco.y+this.meco.height+4;
         this.nogimyku=new Nap();
         this.nogimyku.x=this.meco.x;
         this.nogimyku.y=this.meco.y+this.meco.height+4;
         return;
      }

      private static const revisahyj:int = 600-Simezute.loko-10;

      public static const zaf:Stats = new Stats();

      public var hyzifozos:Pahopadif;

      private var rimycu:Gege;

      public var mebal:Simezute;

      public var bagy:Jopafumod;

      public var meco:Tipijojep;

      public var zyfunaqa:Kihec;

      public var dorulegi:Tyfecizoc;

      public var nogimyku:Nap;

      public var dac:Kumip;

      public var filename_:String = null;

      private var sug:Zurucuvy;

      private function bylajuloz(param1:Cecan) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:IntPoint = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:Vac = null;
         _loc2_=param1.tiles_[0];
         switch(this.hyzifozos.gicawol())
         {
            case Pahopadif.zykecinoq:
               this.jofyfo(param1.tiles_,this.dac.gakej,this.dac.dykaw());
               break;
            case Pahopadif.jew:
               this.jofyfo(param1.tiles_,this.dac.gakej,-1);
               break;
            case Pahopadif.tecazyfo:
               _loc3_=this.mebal.getType(_loc2_.x_,_loc2_.y_,this.dac.gakej);
               if(_loc3_==-1)
               {
                  return;
               }
               this.dac.gekuvy(_loc3_);
               this.hyzifozos.heqenage(Pahopadif.zykecinoq);
               break;
            case Pahopadif.tepujuk:
               _loc4_=this.mebal.vyfenod(_loc2_.x_,_loc2_.y_);
               _loc5_=new Vac(param1.tiles_,_loc4_);
               _loc5_.addEventListener(Event.COMPLETE,this.reryh);
               addChild(_loc5_);
               break;
         }
         this.mebal.draw();
         return;
      }

      private function reryh(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vac = param1.currentTarget as Vac;
         this.cacubym(_loc2_.tiles_,_loc2_.vyfenod());
         return;
      }

      private function jofyfo(param1:Vector.<IntPoint>, param2:int, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:IntPoint = null;
         var _loc6_:* = 0;
         var _loc4_:Julec = new Julec();
         for each (_loc5_ in param1)
         {
            _loc6_=this.mebal.getType(_loc5_.x_,_loc5_.y_,param2);
            if(_loc6_==param3)
            {
            }
            else
            {
               _loc4_.hysisuw(new Venonabul(this.mebal,_loc5_.x_,_loc5_.y_,param2,_loc6_,param3));
            }
         }
         if(_loc4_.bor())
         {
            return;
         }
         this.rimycu.qutofiz(_loc4_);
         return;
      }

      private function cacubym(param1:Vector.<IntPoint>, param2:String) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:IntPoint = null;
         var _loc5_:String = null;
         var _loc3_:Julec = new Julec();
         for each (_loc4_ in param1)
         {
            _loc5_=this.mebal.vyfenod(_loc4_.x_,_loc4_.y_);
            if(_loc5_==param2)
            {
            }
            else
            {
               _loc3_.hysisuw(new Qiq(this.mebal,_loc4_.x_,_loc4_.y_,_loc5_,param2));
            }
         }
         if(_loc3_.bor())
         {
            return;
         }
         this.rimycu.qutofiz(_loc3_);
         return;
      }

      private function ruminod(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(this.meco.getValue())
         {
            case "Ground":
               Hepapi.jamuny(this,this.zyfunaqa);
               Hepapi.zolinoqa(this,this.dorulegi);
               Hepapi.zolinoqa(this,this.nogimyku);
               this.dac=this.zyfunaqa;
               break;
            case "Objects":
               Hepapi.zolinoqa(this,this.zyfunaqa);
               Hepapi.jamuny(this,this.dorulegi);
               Hepapi.zolinoqa(this,this.nogimyku);
               this.dac=this.dorulegi;
               break;
            case "Regions":
               Hepapi.zolinoqa(this,this.zyfunaqa);
               Hepapi.zolinoqa(this,this.dorulegi);
               Hepapi.jamuny(this,this.nogimyku);
               this.dac=this.nogimyku;
               break;
         }
         return;
      }

      private function hynybumew(param1:Famosehot) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rimycu.fega();
         this.mebal.draw();
         return;
      }

      private function tavyzyce(param1:Famosehot) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rimycu.zeware();
         this.mebal.draw();
         return;
      }

      private function viwa(param1:Famosehot) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:IntPoint = null;
         var _loc5_:Gutunul = null;
         var _loc2_:Vector.<IntPoint> = this.mebal.rizo();
         var _loc3_:Julec = new Julec();
         for each (_loc4_ in _loc2_)
         {
            _loc5_=this.mebal.gosyq(_loc4_.x_,_loc4_.y_);
            if(_loc5_==null)
            {
            }
            else
            {
               _loc3_.hysisuw(new Mydytuq(this.mebal,_loc4_.x_,_loc4_.y_,_loc5_));
            }
         }
         if(_loc3_.bor())
         {
            return;
         }
         this.rimycu.qutofiz(_loc3_);
         this.mebal.draw();
         this.filename_=null;
         return;
      }

      private function bif() : String {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc7_:* = 0;
         var _loc8_:Gutunul = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:* = 0;
         var _loc1_:Rectangle = this.mebal.qazaheb();
         if(_loc1_==null)
         {
            return null;
         }
         var _loc2_:Object = {};
         _loc2_["width"]=int(_loc1_.width);
         _loc2_["height"]=int(_loc1_.height);
         var _loc3_:Object = {};
         var _loc4_:Array = [];
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:int = _loc1_.y;
         while(_loc6_<_loc1_.bottom)
         {
            _loc7_=_loc1_.x;
            while(_loc7_<_loc1_.right)
            {
               _loc8_=this.mebal.gosyq(_loc7_,_loc6_);
               _loc9_=this.cut(_loc8_);
               _loc10_=this.sug.stringify(_loc9_);
               if(!_loc3_.hasOwnProperty(_loc10_))
               {
                  _loc11_=_loc4_.length;
                  _loc3_[_loc10_]=_loc11_;
                  _loc4_.push(_loc9_);
               }
               else
               {
                  _loc11_=_loc3_[_loc10_];
               }
               _loc5_.writeShort(_loc11_);
               _loc7_++;
            }
            _loc6_++;
         }
         _loc2_["dict"]=_loc4_;
         _loc5_.compress();
         _loc2_["data"]=Base64.encodeByteArray(_loc5_);
         return this.sug.stringify(_loc2_);
      }

      private function jucafiso(param1:Famosehot) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.bif();
         if(_loc2_==null)
         {
            return;
         }
         new FileReference().save(_loc2_,this.filename_==null?"map.jm":this.filename_);
         return;
      }

      private function cut(param1:Gutunul) : Object {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Vector.<int> = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc2_:Object = {};
         if(param1!=null)
         {
            _loc3_=param1.qenozyk;
            if(_loc3_[Himo.zacuzo]!=-1)
            {
               _loc4_=Qezab.pelek(_loc3_[Himo.zacuzo]);
               _loc2_["ground"]=_loc4_;
            }
            if(_loc3_[Himo.himuvypeb]!=-1)
            {
               _loc4_=ObjectLibrary.pelek(_loc3_[Himo.himuvypeb]);
               _loc5_={id:_loc4_};
               if(param1.damu!=null)
               {
                  _loc5_["name"]=param1.damu;
               }
               _loc2_["objs"]=[_loc5_];
            }
            if(_loc3_[Himo.picobozuc]!=-1)
            {
               _loc4_=Vehulumes.pelek(_loc3_[Himo.picobozuc]);
               _loc2_["regions"]=[{id:_loc4_}];
            }
         }
         return _loc2_;
      }

      private var byz:FileReference = null;

      private function lucip(param1:Famosehot) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.byz=new FileReference();
         this.byz.addEventListener(Event.SELECT,this.myjojawo);
         this.byz.browse([new FileFilter("JSON Map (*.jm)","*.jm")]);
         return;
      }

      private function myjojawo(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var event:Event = param1;
         var loadedFile:FileReference = event.target as FileReference;
         loadedFile.addEventListener(Event.COMPLETE,this.vokyfivu);
         loadedFile.addEventListener(IOErrorEvent.IO_ERROR,this.dyfoqikif);
         try
         {
            loadedFile.load();
         }
         catch(e:Error)
         {
         }
         return;
      }

      private function vokyfivu(param1:Event) : void {
         var _loc19_:* = false;
         var _loc20_:* = true;
         var _loc9_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:Object = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc2_:FileReference = param1.target as FileReference;
         this.filename_=_loc2_.name;
         var _loc3_:Object = this.sug.parse(_loc2_.data.toString());
         var _loc4_:int = _loc3_["width"];
         var _loc5_:int = _loc3_["height"];
         var _loc6_:Rectangle = new Rectangle(int(Simezute.wagagoq/2-_loc4_/2),int(Simezute.wagagoq/2-_loc5_/2),_loc4_,_loc5_);
         this.mebal.clear();
         this.rimycu.clear();
         var _loc7_:Array = _loc3_["dict"];
         var _loc8_:ByteArray = Base64.decodeToByteArray(_loc3_["data"]);
         _loc8_.uncompress();
         var _loc10_:int = _loc6_.y;
         while(_loc10_<_loc6_.bottom)
         {
            _loc11_=_loc6_.x;
            while(_loc11_<_loc6_.right)
            {
               _loc12_=_loc7_[_loc8_.readShort()];
               if(_loc12_.hasOwnProperty("ground"))
               {
                  _loc9_=Qezab.tumu[_loc12_["ground"]];
                  this.mebal.bivacem(_loc11_,_loc10_,Himo.zacuzo,_loc9_);
               }
               _loc13_=_loc12_["objs"];
               if(_loc13_!=null)
               {
                  for each (_loc15_ in _loc13_)
                  {
                     if(!ObjectLibrary.tumu.hasOwnProperty(_loc15_["id"]))
                     {
                     }
                     else
                     {
                        _loc9_=ObjectLibrary.tumu[_loc15_["id"]];
                        this.mebal.bivacem(_loc11_,_loc10_,Himo.himuvypeb,_loc9_);
                        if(_loc15_.hasOwnProperty("name"))
                        {
                           this.mebal.ken(_loc11_,_loc10_,_loc15_["name"]);
                        }
                     }
                  }
               }
               _loc14_=_loc12_["regions"];
               if(_loc14_!=null)
               {
                  for each (_loc16_ in _loc14_)
                  {
                     _loc9_=Vehulumes.tumu[_loc16_["id"]];
                     this.mebal.bivacem(_loc11_,_loc10_,Himo.picobozuc,_loc9_);
                  }
               }
               _loc11_++;
            }
            _loc10_++;
         }
         this.mebal.draw();
         return;
      }

      private function dyfoqikif(param1:Event) : void {
         return;
      }

      private function gikulofu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Hutisame(this.bif()));
         return;
      }
   }

}