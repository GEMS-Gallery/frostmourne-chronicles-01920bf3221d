export const idlFactory = ({ IDL }) => {
  const Chapter = IDL.Record({ 'title' : IDL.Text, 'content' : IDL.Text });
  return IDL.Service({
    'getChapter' : IDL.Func([IDL.Nat], [IDL.Opt(Chapter)], ['query']),
    'getChapters' : IDL.Func([], [IDL.Vec(Chapter)], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
