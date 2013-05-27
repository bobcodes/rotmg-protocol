package tobuc
{
   import vajurym.Cicyhovyl;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import lutyfopo.Console;


   public class Qowehim extends Zuby
   {
      public function Qowehim(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var console:Console = param1;
         super(console);
         this.dahesi=new Object();
         remoter.addEventListener(Event.CONNECT,this.kewazibub);
         remoter.registerCallback("log",new function(param1:ByteArray):void
         {
            registerLog(Cicyhovyl.tusigo(param1));
            return;
            });
            return;
      }

      private var dahesi:Object;

      private var kabegib:uint;

      private var bigemy:Cicyhovyl;

      private var koduhyto:Cicyhovyl;

      private var mujukuj:Boolean;

      private var _timer:uint;

      public var first:Cicyhovyl;

      public var last:Cicyhovyl;

      private var maneraso:uint;

      private var _lines:uint;

      private function kewazibub(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cicyhovyl = this.first;
         while(_loc2_)
         {
            this.sumusoj(_loc2_);
            _loc2_=_loc2_.next;
         }
         return;
      }

      private function sumusoj(param1:Cicyhovyl) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ByteArray = null;
         if(remoter.canSend)
         {
            _loc2_=new ByteArray();
            param1.ponevyne(_loc2_);
            remoter.send("log",_loc2_);
         }
         return;
      }

      public function update(param1:uint) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this._timer=param1;
         if(this.kabegib>0)
         {
            this.kabegib--;
         }
         if(this.koduhyto)
         {
            if(this.bigemy)
            {
               this.remove(this.bigemy);
            }
            this.bigemy=this.koduhyto;
            this.koduhyto=null;
            this.push(this.bigemy);
         }
         var _loc2_:Boolean = this.mujukuj;
         this.mujukuj=false;
         return _loc2_;
      }

      public function add(param1:Cicyhovyl) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this._lines++;
         param1.line=this._lines;
         param1.time=this._timer;
         this.registerLog(param1);
         return;
      }

      private function registerLog(param1:Cicyhovyl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mujukuj=true;
         this.addChannel(param1.ch);
         param1.totyduv=param1.line+" ";
         param1.gebaqica="[<a href=\"event:channel_"+param1.ch+"\">"+param1.ch+"</a>] ";
         param1.web=config.timeStampFormatter(param1.time)+" ";
         this.sumusoj(param1);
         if(param1.repeat)
         {
            if(this.kabegib>0&&(this.bigemy))
            {
               param1.line=this.bigemy.line;
               this.koduhyto=param1;
               return;
            }
            this.kabegib=config.maxRepeats;
            this.bigemy=param1;
         }
         this.push(param1);
         while(this.maneraso>config.maxLines&&config.maxLines>0)
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
         var _loc2_:Cicyhovyl = null;
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
            delete this.dahesi[[param1]];
         }
         else
         {
            this.first=null;
            this.last=null;
            this.maneraso=0;
            this.dahesi=new Object();
         }
         return;
      }

      public function getLogsAsString(param1:String, param2:Boolean=true, param3:Function=null) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = "";
         var _loc5_:Cicyhovyl = this.first;
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
         var _loc1_:Array = new Array(Console.caraky);
         this.gohyg(Console.zuhuly,_loc1_);
         this.gohyg(Console.wenoc,_loc1_);
         this.gohyg(Bamyhugep.dywugidaw,_loc1_);
         this.gohyg(Console.sajim,_loc1_);
         var _loc2_:Array = new Array();
         for (_loc3_ in this.dahesi)
         {
            if(_loc1_.indexOf(_loc3_)<0)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc1_.concat(_loc2_.sort(Array.CASEINSENSITIVE));
      }

      private function gohyg(param1:String, param2:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.dahesi.hasOwnProperty(param1))
         {
            param2.push(param1);
         }
         return;
      }

      public function cunosimuq() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dahesi=new Object();
         var _loc1_:Cicyhovyl = this.first;
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
         this.dahesi[param1]=null;
         return;
      }

      private function push(param1:Cicyhovyl) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.last==null)
         {
            this.first=param1;
         }
         else
         {
            this.last.next=param1;
            param1.wacumod=this.last;
         }
         this.last=param1;
         this.maneraso++;
         return;
      }

      private function remove(param1:Cicyhovyl) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.first==param1)
         {
            this.first=param1.next;
         }
         if(this.last==param1)
         {
            this.last=param1.wacumod;
         }
         if(param1==this.bigemy)
         {
            this.bigemy=null;
         }
         if(param1==this.koduhyto)
         {
            this.koduhyto=null;
         }
         if(param1.next!=null)
         {
            param1.next.wacumod=param1.wacumod;
         }
         if(param1.wacumod!=null)
         {
            param1.wacumod.next=param1.next;
         }
         this.maneraso--;
         return;
      }
   }

}