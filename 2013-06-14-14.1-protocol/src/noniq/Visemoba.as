package noniq
{
   import flash.display.Sprite;
   import vevum.Stats;
   import taz.Kijube;
   import fehas.Wyduve;
   import guje.Kehyg;
   import com.company.util.IntPoint;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import taz.Qetijiha;
   import com.company.util.Kideky;
   import taz.Nanob;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import com.hurlant.util.Base64;
   import flash.net.FileReference;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Focu;
   import flash.net.FileFilter;
   import flash.events.IOErrorEvent;
   import qymoho.Taziw;
   import waryp.Cysaruha;
   import sijizoh.Duq;


   public class Visemoba extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Visemoba() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new Taziw());
         addChild(new Cysaruha());
         this.tepiseha=Duq.pamazo().getInstance(Kehyg);
         this.vudi=new Tosisa();
         this.vudi.x=15;
         this.vudi.y=kavyl;
         this.vudi.addEventListener(Nanob.UNDO_COMMAND_EVENT,this.dacari);
         this.vudi.addEventListener(Nanob.REDO_COMMAND_EVENT,this.zibycu);
         this.vudi.addEventListener(Nanob.CLEAR_COMMAND_EVENT,this.hyti);
         this.vudi.addEventListener(Nanob.LOAD_COMMAND_EVENT,this.jipuwun);
         this.vudi.addEventListener(Nanob.SAVE_COMMAND_EVENT,this.wowafu);
         this.vudi.addEventListener(Nanob.TEST_COMMAND_EVENT,this.lozan);
         addChild(this.vudi);
         this.fyte=new Kijube();
         this.hoh=new Vibefij();
         this.hoh.addEventListener(Resynuf.TILES_EVENT,this.bofobys);
         this.hoh.x=800/2-Vibefij.tici/2;
         this.hoh.y=kavyl;
         addChild(this.hoh);
         this.jadi=new Vejofuhy(this.hoh);
         this.jadi.x=4;
         this.jadi.y=600-Vejofuhy.HEIGHT-10;
         addChild(this.jadi);
         new Vector.<String>(3)[0]="Ground";
         new Vector.<String>(3)[1]="Objects";
         new Vector.<String>(3)[2]="Regions";
         this.bevosojow=new Wyduve(new Vector.<String>(3),Qenynyb.WIDTH,26);
         this.bevosojow.x=this.hoh.x+Vibefij.tici+4;
         this.bevosojow.y=kavyl;
         this.bevosojow.addEventListener(Event.CHANGE,this.qurari);
         addChild(this.bevosojow);
         this.vekukemir=new Taroja();
         this.vekukemir.x=this.bevosojow.x;
         this.vekukemir.y=this.bevosojow.y+this.bevosojow.height+4;
         this.myquny=this.vekukemir;
         addChild(this.vekukemir);
         this.fefycoqo=new Dazuzyn();
         this.fefycoqo.x=this.bevosojow.x;
         this.fefycoqo.y=this.bevosojow.y+this.bevosojow.height+4;
         this.wety=new Zuge();
         this.wety.x=this.bevosojow.x;
         this.wety.y=this.bevosojow.y+this.bevosojow.height+4;
         return;
      }

      private static const kavyl:int = 600-Vibefij.tici-10;

      public static const piwewito:Stats = new Stats();

      public var vudi:Tosisa;

      private var fyte:Kijube;

      public var hoh:Vibefij;

      public var jadi:Vejofuhy;

      public var bevosojow:Wyduve;

      public var vekukemir:Taroja;

      public var fefycoqo:Dazuzyn;

      public var wety:Zuge;

      public var myquny:Qenynyb;

      public var filename_:String = null;

      private var tepiseha:Kehyg;

      private function bofobys(param1:Resynuf) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:IntPoint = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:Dusuf = null;
         _loc2_=param1.tiles_[0];
         switch(null)
         {
            case Tosisa.wolafi:
               this.sutym(param1.tiles_,this.myquny.zyfukaz,this.myquny.macyhofufi());
               break;
            case Tosisa.tyb:
               this.sutym(param1.tiles_,this.myquny.zyfukaz,-1);
               break;
            case Tosisa.ryz:
               _loc3_=this.hoh.getType(_loc2_.x_,_loc2_.y_,this.myquny.zyfukaz);
               if(_loc3_==-1)
               {
                  return;
               }
               this.myquny.hope(_loc3_);
               this.vudi.lyh(Tosisa.wolafi);
               break;
            case Tosisa.zyrycobe:
               _loc4_=this.hoh.homosuwyd(_loc2_.x_,_loc2_.y_);
               _loc5_=new Dusuf(param1.tiles_,_loc4_);
               _loc5_.addEventListener(Event.COMPLETE,this.sut);
               addChild(_loc5_);
               break;
         }
         this.hoh.draw();
         return;
      }

      private function sut(param1:Event) : void {
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS4]_loc4_:* = [/OFS]true;
         var [OFS19]_loc2_:Dusuf = [/OFS][OFS8]param1[/OFS].[OFS9]currentTarget[/OFS][OFS15] as [/OFS][OFS12]Dusuf[/OFS];
         this.[OFS30]buk[/OFS][OFS30]([/OFS][OFS21]_loc2_[/OFS].[OFS22]tiles_[/OFS][OFS30],[/OFS][OFS25]_loc2_[/OFS].[OFS26]homosuwyd[/OFS][OFS26]([/OFS][OFS26])[/OFS][OFS30])[/OFS];
         [OFS34]return[/OFS];
      }

      private function sutym(param1:Vector.<IntPoint>, param2:int, param3:int) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:IntPoint = null;
         var _loc6_:* = 0;
         var _loc4_:Qetijiha = new Qetijiha();
         for each (_loc5_ in param1)
         {
            _loc6_=this.hoh.getType(_loc5_.x_,_loc5_.y_,param2);
            if(_loc6_==param3)
            {
            }
            else
            {
               _loc4_.walur(new Haviru(this.hoh,_loc5_.x_,_loc5_.y_,param2,_loc6_,param3));
            }
         }
         if(_loc4_.koqototaz())
         {
            return;
         }
         this.fyte.tynyva(_loc4_);
         return;
      }

      private function buk(param1:Vector.<IntPoint>, param2:String) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:IntPoint = null;
         var _loc5_:String = null;
         var _loc3_:Qetijiha = new Qetijiha();
         for each (_loc4_ in param1)
         {
            _loc5_=this.hoh.homosuwyd(_loc4_.x_,_loc4_.y_);
            if(_loc5_==param2)
            {
            }
            else
            {
               _loc3_.walur(new Dyzavuwep(this.hoh,_loc4_.x_,_loc4_.y_,_loc5_,param2));
            }
         }
         if(_loc3_.koqototaz())
         {
            return;
         }
         this.fyte.tynyva(_loc3_);
         return;
      }

      private function qurari(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case "Ground":
               Kideky.corikak(this,this.vekukemir);
               Kideky.kapo(this,this.fefycoqo);
               Kideky.kapo(this,this.wety);
               this.myquny=this.vekukemir;
               break;
            case "Objects":
               Kideky.kapo(this,this.vekukemir);
               Kideky.corikak(this,this.fefycoqo);
               Kideky.kapo(this,this.wety);
               this.myquny=this.fefycoqo;
               break;
            case "Regions":
               Kideky.kapo(this,this.vekukemir);
               Kideky.kapo(this,this.fefycoqo);
               Kideky.corikak(this,this.wety);
               this.myquny=this.wety;
               break;
         }
         return;
      }

      private function dacari(param1:Nanob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fyte.hugede();
         this.hoh.draw();
         return;
      }

      private function zibycu(param1:Nanob) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fyte.lucijyfub();
         this.hoh.draw();
         return;
      }

      private function hyti(param1:Nanob) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:IntPoint = null;
         var _loc5_:Gyd = null;
         var _loc2_:Vector.<IntPoint> = this.hoh.wawipivy();
         var _loc3_:Qetijiha = new Qetijiha();
         for each (_loc4_ in _loc2_)
         {
            _loc5_=this.hoh.zekotal(_loc4_.x_,_loc4_.y_);
            if(_loc5_==null)
            {
            }
            else
            {
               _loc3_.walur(new Vumoh(this.hoh,_loc4_.x_,_loc4_.y_,_loc5_));
            }
         }
         if(_loc3_.koqototaz())
         {
            return;
         }
         this.fyte.tynyva(_loc3_);
         this.hoh.draw();
         this.filename_=null;
         return;
      }

      private function doryjun() : String {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc7_:* = 0;
         var _loc8_:Gyd = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:* = 0;
         var _loc1_:Rectangle = this.hoh.nevo();
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
               _loc8_=this.hoh.zekotal(_loc7_,_loc6_);
               _loc9_=this.jiv(_loc8_);
               _loc10_=this.tepiseha.stringify(_loc9_);
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
         return this.tepiseha.stringify(_loc2_);
      }

      private function wowafu(param1:Nanob) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.doryjun();
         if(_loc2_==null)
         {
            return;
         }
         new FileReference().save(_loc2_,this.filename_==null?"map.jm":this.filename_);
         return;
      }

      private function jiv(param1:Gyd) : Object {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Vector.<int> = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc2_:Object = {};
         if(param1!=null)
         {
            _loc3_=param1.vodypemo;
            if(_loc3_[Cariwepy.pivycina]!=-1)
            {
               _loc4_=Qemujy.ryqovol(_loc3_[Cariwepy.pivycina]);
               _loc2_["ground"]=_loc4_;
            }
            if(_loc3_[Cariwepy.nanyt]!=-1)
            {
               _loc4_=ObjectLibrary.ryqovol(_loc3_[Cariwepy.nanyt]);
               _loc5_={id:_loc4_};
               if(param1.quduk!=null)
               {
                  _loc5_["name"]=param1.quduk;
               }
               _loc2_["objs"]=[_loc5_];
            }
            if(_loc3_[Cariwepy.cis]!=-1)
            {
               _loc4_=Focu.ryqovol(_loc3_[Cariwepy.cis]);
               _loc2_["regions"]=[{id:_loc4_}];
            }
         }
         return _loc2_;
      }

      private var cys:FileReference = null;

      private function jipuwun(param1:Nanob) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cys=new FileReference();
         this.cys.addEventListener(Event.SELECT,this.hoju);
         this.cys.browse([new FileFilter("JSON Map (*.jm)","*.jm")]);
         return;
      }

      private function hoju(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var event:Event = param1;
         var loadedFile:FileReference = event.target as FileReference;
         loadedFile.addEventListener(Event.COMPLETE,this.kafoba);
         loadedFile.addEventListener(IOErrorEvent.IO_ERROR,this.heryruluk);
         try
         {
            loadedFile.load();
         }
         catch(e:Error)
         {
         }
         return;
      }



      private function heryruluk(param1:Event) : void {
         return;
      }

      private function lozan(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Cywyqyd(this.doryjun()));
         return;
      }
   }

}