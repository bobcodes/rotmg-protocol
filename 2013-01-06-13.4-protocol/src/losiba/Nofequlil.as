package losiba
{
[CLASS1848]   import cakajitez.Ras;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import wacic.Console;


   public class Nofequlil extends Hubobag
   {
      public function Nofequlil(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var console:Console = param1;
         super(console);
         this.keguwajuk=new Object();
         remoter.addEventListener(Event.CONNECT,this.lipig);
         remoter.registerCallback("log",new function(param1:ByteArray):void
         {
            registerLog(Ras.ciwygeruk(param1));
            return;
            });
            return;
      }

      private var keguwajuk:Object;

      private var vipusu:uint;

      private var jisypasyn:Ras;

      private var kicakumu:Ras;

      private var meseda:Boolean;

      private var _timer:uint;

      public var first:Ras;

      public var last:Ras;

      private var denasi:uint;

      private var _lines:uint;

      private function lipig(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ras = this.first;
         while(_loc2_)
         {
            this.tevadyse(_loc2_);
            _loc2_=_loc2_.next;
         }
         return;
      }

      private function tevadyse(param1:Ras) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = null;
         if(remoter.canSend)
         {
            _loc2_=new ByteArray();
            param1.matib(_loc2_);
            remoter.send("log",_loc2_);
         }
         return;
      }

      public function update(param1:uint) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this._timer=param1;
         if(this.vipusu>0)
         {
            this.vipusu--;
         }
         if(this.kicakumu)
         {
            if(this.jisypasyn)
            {
               this.remove(this.jisypasyn);
            }
            this.jisypasyn=this.kicakumu;
            this.kicakumu=null;
            this.push(this.jisypasyn);
         }
         var _loc2_:Boolean = this.meseda;
         this.meseda=false;
         return _loc2_;
      }

      public function add(param1:Ras) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this._lines++;
         param1.line=this._lines;
         param1.time=this._timer;
         this.registerLog(param1);
         return;
      }

      private function registerLog(param1:Ras) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.meseda=true;
         this.addChannel(param1.ch);
         param1.fagidic=param1.line+" ";
         param1.koh="[<a href=\"event:channel_"+param1.ch+"\">"+param1.ch+"</a>] ";
         param1.dadufodap=config.timeStampFormatter(param1.time)+" ";
         this.tevadyse(param1);
         if(param1.repeat)
         {
            if(this.vipusu>0&&(this.jisypasyn))
            {
               param1.line=this.jisypasyn.line;
               this.kicakumu=param1;
               return;
            }
            this.vipusu=config.maxRepeats;
            this.jisypasyn=param1;
         }
         this.push(param1);
         while(this.denasi>config.maxLines&&config.maxLines>0)
         {
            this.remove(this.first);
         }
         if((config.tracing)&&!(config.traceCall==null))
         {
            config.traceCall(param1.ch,param1.plainText(),param1.priority);
         }
         return;
      }

      public function clear(param1:String=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ras = null;
         if(param1)
         {
            _loc2_=this.first;
            while(_loc2_)
            {
               if(_loc2_.ch==param1)
               {
                  this.remove(_loc2_);
               }
               _loc2_=_loc2_.next;
            }
            delete this.keguwajuk[[param1]];
         }
         else
         {
            this.first=null;
            this.last=null;
            this.denasi=0;
            this.keguwajuk=new Object();
         }
         return;
      }

      public function getLogsAsString(param1:String, param2:Boolean=true, param3:Function=null) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = "";
         var _loc5_:Ras = this.first;
         while(_loc5_)
         {
            if(param3==null||(param3(_loc5_)))
            {
               if(this.first!=_loc5_)
               {
                  _loc4_=_loc4_+param1;
               }
               _loc4_=_loc4_+(param2?_loc5_.toString():_loc5_.plainText());
            }
            _loc5_=_loc5_.next;
         }
         return _loc4_;
      }

      public function getChannels() : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc1_:Array = new Array(Console.wacyvefo);
         this.noqevu(Console.tuju,_loc1_);
         this.noqevu(Console.zunowerim,_loc1_);
         this.noqevu(Wejilag.hafiwo,_loc1_);
         this.noqevu(Console.gicidip,_loc1_);
         var _loc2_:Array = new Array();
         for (_loc3_ in this.keguwajuk)
         {
            if(_loc1_.indexOf(_loc3_)<0)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc1_.concat(_loc2_.sort(Array.CASEINSENSITIVE));
      }

      private function noqevu(param1:String, param2:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.keguwajuk.hasOwnProperty(param1))
         {
            param2.push(param1);
         }
         return;
      }

      public function tumyr() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.keguwajuk=new Object();
         var _loc1_:Ras = this.first;
         while(_loc1_)
         {
            this.addChannel(_loc1_.ch);
            _loc1_=_loc1_.next;
         }
         return;
      }

      public function addChannel(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.keguwajuk[param1]=null;
         return;
      }

      private function push(param1:Ras) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.last==null)
         {
            this.first=param1;
         }
         else
         {
            this.last.next=param1;
            param1.syluget=this.last;
         }
         this.last=param1;
         this.denasi++;
         return;
      }

      private function remove(param1:Ras) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.first==param1)
         {
            this.first=param1.next;
         }
         if(this.last==param1)
         {
            this.last=param1.syluget;
         }
         if(param1==this.jisypasyn)
         {
            this.jisypasyn=null;
         }
         if(param1==this.kicakumu)
         {
            this.kicakumu=null;
         }
         if(param1.next!=null)
         {
            param1.next.syluget=param1.syluget;
         }
         if(param1.syluget!=null)
         {
            param1.syluget.next=param1.next;
         }
         this.denasi--;
         return;
      }
   }
[/CLASS]
}