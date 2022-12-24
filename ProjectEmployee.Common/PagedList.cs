using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectEmployee.Common
{
    public class PagedList<T> : PageParam where T : class
    {
        public PagedList()
        {
            this.Values = new List<T>();
        }
        public PagedList(PageParam pageParam) : base(pageParam)
        {
            this.Values = new List<T>();
        }
        public int TotalRecord { get; set; }
        public List<T> Values { get; set; }
    }
}
